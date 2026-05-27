.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->onClosed()V
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

    .line 2781
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2785
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2786
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved_Cards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2787
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2788
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->v(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2789
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2790
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v3, v3, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v3

    invoke-static {v3}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2791
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 2793
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    goto/16 :goto_1

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    goto/16 :goto_1

    .line 2798
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 2799
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    goto/16 :goto_1

    .line 2803
    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved_banks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2804
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->S(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2805
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->T(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->setmSelectedItem(I)V

    .line 2806
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->T(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->notifyDataSetChanged()V

    .line 2807
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->S(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2823
    :cond_3
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->U(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2824
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_netBanking_header:I

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2826
    :cond_4
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "third_party_wallets_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2841
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->U(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2842
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_third_party_wallets_header:I

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2844
    :cond_5
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "emi_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2847
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->f(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2848
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2850
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->B(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2851
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->r(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2852
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v3, v3, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v3}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->g(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/core/response/PaymentOptionDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->getConvenienceFee()Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    move-result-object v3

    invoke-static {v3}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->updateConvenienceFee(DD)V

    .line 2853
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showConvenienceFeeOption()V

    .line 2854
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isWalletSufficientBalance()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2855
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonEnable()V

    goto :goto_0

    .line 2857
    :cond_6
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    goto :goto_0

    .line 2859
    :cond_7
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->setPaymentButtonDisable()V

    .line 2860
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->hideConvenienceFeeOption()V

    .line 2865
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->M(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_emi_header:I

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2866
    :cond_9
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upi_section"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2868
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->I(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2871
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->U(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2874
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->O(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;

    iget-object v1, v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_upi_header:I

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2877
    :cond_a
    :goto_1
    return-void
.end method
