.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 1347
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1350
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0, p2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Z)Z

    .line 1351
    const-string v0, "DC"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_13

    .line 1353
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 1354
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 1355
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->f(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 1361
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->e(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1362
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 1363
    :cond_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1364
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->q(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 1365
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1366
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 1367
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v3, Lcom/payumoney/sdkui/R$string;->label_payu_money_wallet_rs500:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v5, v5, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v5, v6}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1369
    :cond_5
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v3

    invoke-static {v3}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v5

    .line 1370
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v3

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v8, Lcom/payumoney/sdkui/R$string;->label_payu_money_wallet_rs500:I

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/Wallet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1372
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1373
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object v2

    .line 1374
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1376
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v0

    cmpg-double v3, v5, v0

    if-gez v3, :cond_6

    .line 1380
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v1

    invoke-static {v1, v2, v4}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v1

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_0

    .line 1384
    :cond_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_0

    .line 1388
    :cond_7
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    invoke-static {v0, v2, v4, v1}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-gez v0, :cond_8

    .line 1391
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v3, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v3

    invoke-static {v3, v2, v4, v1}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_0

    .line 1395
    :cond_8
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 1398
    :goto_0
    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1399
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1401
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 1402
    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-static {v0, v1, v4}, Lcom/payumoney/core/utils/SdkHelper;->getNBConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v0

    cmpg-double v2, v5, v0

    if-gez v2, :cond_a

    .line 1404
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v3

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 1405
    invoke-static {v5}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v5

    .line 1404
    invoke-static {v3, v5, v4}, Lcom/payumoney/core/utils/SdkHelper;->getNBConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto/16 :goto_1

    .line 1408
    :cond_a
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto/16 :goto_1

    .line 1410
    :cond_b
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->e(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1411
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->o(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 1412
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1413
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    goto/16 :goto_1

    .line 1414
    :cond_c
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1415
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    goto :goto_1

    .line 1416
    :cond_d
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->p(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1417
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->q(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 1418
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1419
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    goto :goto_1

    .line 1420
    :cond_e
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1421
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    goto :goto_1

    .line 1423
    :cond_f
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1424
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->n(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 1425
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->x(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1426
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->l(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    goto :goto_1

    .line 1427
    :cond_10
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->y(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1428
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->m(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    goto :goto_1

    .line 1431
    :cond_11
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 1435
    :cond_12
    :goto_1
    goto/16 :goto_3

    .line 1437
    :cond_13
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v3

    sget v4, Lcom/payumoney/sdkui/R$string;->label_payumoney_wallet:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(I)V

    .line 1438
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->t(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1439
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1440
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object v3

    .line 1441
    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/entity/CardDetail;->getPg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1442
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v4, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v6

    invoke-static {v6, v3, v2, v1}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_2

    .line 1445
    :cond_14
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v4, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v6}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v6

    invoke-static {v6, v3, v2, v1}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 1448
    :goto_2
    goto/16 :goto_3

    :cond_15
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1449
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1450
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v1

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 1451
    invoke-static {v5}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v5

    .line 1450
    invoke-static {v1, v5, v2}, Lcom/payumoney/core/utils/SdkHelper;->getNBConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_3

    .line 1452
    :cond_16
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->z(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1453
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1454
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v3

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 1455
    invoke-static {v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->A(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 1454
    invoke-static {v3, v4}, Lcom/payumoney/core/utils/SdkHelper;->getThirdPartyWalletsConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_3

    .line 1456
    :cond_17
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->B(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1457
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 1459
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v3

    iget-object v4, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 1460
    invoke-static {v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 1459
    invoke-static {v3, v4}, Lcom/payumoney/core/utils/SdkHelper;->getEmiConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_3

    .line 1462
    :cond_18
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$10;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 1465
    :goto_3
    return-void
.end method
