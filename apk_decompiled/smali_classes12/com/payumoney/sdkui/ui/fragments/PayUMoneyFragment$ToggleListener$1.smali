.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->onOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    .line 2601
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2604
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2605
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved_Cards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "third_party_wallets_section"

    const-string v3, "upi_section"

    const-string v4, "emi_section"

    const-string v5, "saved_banks"

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    .line 2606
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2607
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 2608
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->J(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->J(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->K(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2609
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->J(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/payumoney/core/entity/CardDetail;

    invoke-static {v0, v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Lcom/payumoney/core/entity/CardDetail;)Lcom/payumoney/core/entity/CardDetail;

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2612
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object v0

    .line 2613
    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v8, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v8}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->u(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/CardDetail;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Lcom/payumoney/core/entity/CardDetail;)Ljava/lang/String;

    move-result-object v7

    .line 2615
    const-string v8, "dc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 2616
    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v7

    invoke-virtual {v7}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v7

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v9, v9, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v9}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v9

    invoke-static {v7, v0, v9, v8}, Lcom/payumoney/core/utils/SdkHelper;->getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v7

    goto :goto_0

    .line 2618
    :cond_1
    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v7

    invoke-virtual {v7}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v7

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v9, v9, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v9}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v9

    invoke-static {v7, v0, v9, v8}, Lcom/payumoney/core/utils/SdkHelper;->getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D

    move-result-wide v7

    .line 2621
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v9, v9, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v9, v9, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v0, v9, v10, v7, v8}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2622
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 2623
    goto/16 :goto_4

    .line 2624
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2625
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v9, v9, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v9}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v9

    invoke-static {v9}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto/16 :goto_4

    .line 2627
    :cond_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 2628
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    .line 2629
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-virtual {v0, v7, v8}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setDisplayAmount(D)V

    goto/16 :goto_4

    .line 2633
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2634
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2635
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenieneceFee()V

    .line 2636
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2637
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 2638
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v9, v9, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v9}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v9

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v10, v10, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->w(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v11, v11, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v11}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/payumoney/core/utils/SdkHelper;->getNBConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2639
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    goto/16 :goto_4

    .line 2641
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2642
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v9, v9, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v9}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v9

    invoke-static {v9}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    goto :goto_1

    .line 2644
    :cond_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 2645
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    .line 2646
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-virtual {v0, v7, v8}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setDisplayAmount(D)V

    .line 2648
    :goto_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    goto/16 :goto_4

    .line 2652
    :cond_7
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_a

    .line 2654
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2655
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 2658
    :cond_8
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->L(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2660
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenieneceFee()V

    .line 2661
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2662
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 2663
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v8, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v10, v10, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v10

    iget-object v11, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v11, v11, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v11}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->C(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/payumoney/core/utils/SdkHelper;->getEmiConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2664
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    goto :goto_2

    .line 2666
    :cond_9
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 2667
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v8, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    .line 2668
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v8, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-virtual {v0, v8, v9}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setDisplayAmount(D)V

    .line 2669
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 2672
    :goto_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->M(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v8, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v9, Lcom/payumoney/sdkui/R$string;->label_emi_rs:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v10, v10, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v10, v10, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v10, v11}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-virtual {v8, v9, v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2674
    :cond_a
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2676
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2677
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 2681
    :cond_b
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->N(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2682
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    goto :goto_3

    .line 2684
    :cond_c
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 2687
    :goto_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->L(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2690
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v8, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v10, v10, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v10

    sget-object v11, Lcom/payumoney/core/PayUmoneyConstants;->UPI:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/payumoney/core/utils/SdkHelper;->getUPIConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2691
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 2694
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v8, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v8, v8, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v9, Lcom/payumoney/sdkui/R$string;->label_upi_rs:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v10, v10, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v10, v10, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v10, v11}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-virtual {v8, v9, v7}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2696
    :cond_d
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2697
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenieneceFee()V

    .line 2698
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2701
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2702
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 2705
    :cond_e
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->A(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2706
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    .line 2707
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v9, v9, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v9}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v9

    iget-object v10, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v10, v10, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->A(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/payumoney/core/utils/SdkHelper;->getThirdPartyWalletsConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2708
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    goto :goto_4

    .line 2711
    :cond_f
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 2712
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    .line 2713
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v7, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v7, v7, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-virtual {v0, v7, v8}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setDisplayAmount(D)V

    .line 2714
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 2718
    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->P(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2719
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2720
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    .line 2721
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    .line 2722
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    .line 2723
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    .line 2724
    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2726
    :cond_11
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->d(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableRelativeLayout;->collapse()V

    .line 2727
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 2729
    :cond_12
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V

    .line 2730
    return-void

    .line 2732
    :cond_13
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2733
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-lez v0, :cond_17

    .line 2734
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_14

    .line 2735
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v3, v3, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->s(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/entity/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/entity/Wallet;->getAmount()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;D)D

    .line 2736
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V

    goto :goto_5

    .line 2738
    :cond_14
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V

    goto :goto_5

    .line 2743
    :cond_15
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V

    goto :goto_5

    .line 2748
    :cond_16
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V

    .line 2752
    :cond_17
    :goto_5
    return-void
.end method
