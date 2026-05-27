.class public Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;
.super Lcom/payumoney/sdkui/ui/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;
.implements Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
.implements Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/payumoney/core/entity/PaymentEntity;

.field private o:Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

.field private p:Landroid/view/View;

.field private q:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

.field private r:Lcom/payumoney/core/entity/EmiTenure;

.field private s:Ljava/lang/String;

.field private t:Landroid/view/View;

.field private u:Landroidx/recyclerview/widget/RecyclerView;

.field private v:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private w:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;-><init>()V

    .line 55
    return-void
.end method

.method private a()V
    .locals 11

    .line 165
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->o:Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/core/utils/SdkHelper;->getEmiConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    .line 168
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->updateConvenienceFee(DD)V

    .line 170
    iget-wide v7, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->j:D

    .line 172
    sget v0, Lcom/payumoney/sdkui/R$string;->emi_getting_interests:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->showProgress(I)V

    .line 173
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v4

    iget-object v6, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->s:Ljava/lang/String;

    iget-object v9, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->m:Ljava/util/ArrayList;

    const-string v10, "get_emi_interest_for_bank_tag"

    move-object v5, p0

    invoke-virtual/range {v4 .. v10}, Lcom/payumoney/core/PayUmoneySDK;->getEmiInterestForBank(Lcom/payumoney/core/listener/OnEmiInterestReceivedListener;Ljava/lang/String;DLjava/util/List;Ljava/lang/String;)V

    .line 174
    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->showNoNetworkError()V

    .line 176
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->setContinueButtonDisable()V

    .line 180
    :goto_0
    return-void
.end method

.method private a(Lcom/payumoney/core/entity/PaymentEntity;)V
    .locals 4

    .line 139
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->t:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->emi_selected_bank_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    sget v1, Lcom/payumoney/sdkui/R$id;->tv_emi_selected_bank_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;-><init>(Lcom/payumoney/core/entity/PaymentEntity;Landroid/content/Context;Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->v:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 147
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->o:Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getEmiConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    .line 150
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->updateConvenienceFee(DD)V

    .line 152
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 153
    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 155
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->hideConvenienceFeeOption()V

    .line 158
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->r:Lcom/payumoney/core/entity/EmiTenure;

    .line 159
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->setContinueButtonDisable()V

    .line 160
    return-void
.end method

.method public static newInstance(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;ILcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;
    .locals 3
    .param p0, "selectedEmiBank"    # Lcom/payumoney/core/entity/PaymentEntity;
    .param p2, "theme"    # I
    .param p3, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p4, "paymentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;I",
            "Lcom/payumoney/core/entity/PayumoneyConvenienceFee;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;)",
            "Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;"
        }
    .end annotation

    .line 63
    .local p1, "emiBankList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    .local p5, "emiThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/EmiThreshold;>;"
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v2, "emi_bank_entities"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    const-string v2, "emi_selected_bank"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    const-string v2, "theme"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v2, "emi_conv_fee"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    const-string v2, "payment_id"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "emi_thresholds"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v0
.end method


# virtual methods
.method public hideProgress()V
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->q:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    invoke-interface {v0}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->dismissProgressDialog()V

    .line 323
    :cond_0
    return-void
.end method

.method public navigateToEmiListFragment()V
    .locals 5

    .line 227
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->a:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    nop

    .line 234
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "amount"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "trans_quick_pay"

    invoke-static {v4, v1, v2, v0, v3}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;I)Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->setListener(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)V

    .line 239
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DialogBankListFragment $ "

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 191
    instance-of v0, p1, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    if-eqz v0, :cond_0

    .line 192
    move-object v0, p1

    check-cast v0, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->q:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    .line 197
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 209
    sget v1, Lcom/payumoney/sdkui/R$id;->emi_selected_bank_name:I

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->navigateToEmiListFragment()V

    goto :goto_0

    .line 211
    :cond_0
    sget v1, Lcom/payumoney/sdkui/R$id;->btn_emi_tenure_continue:I

    if-ne v0, v1, :cond_1

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BankName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->r:Lcom/payumoney/core/entity/EmiTenure;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/EmiTenure;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tenure"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->j:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EMITenureSelected"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->r:Lcom/payumoney/core/entity/EmiTenure;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getConvenieneceFee()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->newInstance(Ljava/lang/String;Lcom/payumoney/core/entity/PaymentEntity;Lcom/payumoney/core/entity/EmiTenure;D)Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->q:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/16 v2, 0xd

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->navigateTo(Landroidx/fragment/app/Fragment;I)V

    .line 224
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "amount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->b:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "emi_selected_bank"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    .line 81
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "emi_bank_entities"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->a:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "emi_conv_fee"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->o:Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    .line 83
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payment_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->s:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "emi_thresholds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->m:Ljava/util/ArrayList;

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    sget v0, Lcom/payumoney/sdkui/R$layout;->emi_tenure_screen:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->t:Landroid/view/View;

    .line 98
    sget v1, Lcom/payumoney/sdkui/R$id;->emi_tenures_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 101
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->t:Landroid/view/View;

    sget v1, Lcom/payumoney/sdkui/R$id;->btn_emi_tenure_continue:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->p:Landroid/view/View;

    .line 102
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->w:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 105
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->t:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->initConvenieneceFee(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->setAmount(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->a()V

    .line 135
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->t:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onDetach()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->q:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    .line 203
    return-void
.end method

.method public onItemClickListener(Lcom/payumoney/core/entity/PaymentEntity;Ljava/lang/String;)V
    .locals 4
    .param p1, "entity"    # Lcom/payumoney/core/entity/PaymentEntity;
    .param p2, "tag"    # Ljava/lang/String;

    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    .line 247
    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 250
    const-string v1, "page"

    const-string v2, "EmiTenure"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-wide v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->j:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "Amount"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreviousBankName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BankName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "SavedCard Used"

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EMIBankChanged"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 259
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    .line 261
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->a()V

    .line 263
    :cond_0
    return-void
.end method

.method public onTenureSelected(Lcom/payumoney/core/entity/EmiTenure;)V
    .locals 2
    .param p1, "tenure"    # Lcom/payumoney/core/entity/EmiTenure;

    .line 267
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->r:Lcom/payumoney/core/entity/EmiTenure;

    .line 268
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->setContinueButtonEnable()V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTenureSelected(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ETSF"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public onUpdatedEmiInterestFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->hideProgress()V

    .line 304
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->emi_tenure_failed_to_load:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 309
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->setContinueButtonDisable()V

    .line 310
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->q:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const-string v1, "14"

    invoke-interface {v0, v1}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->popBackStackTillTag(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public onUpdatedEmiInterestReceived(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 285
    .local p1, "emiBankOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->hideProgress()V

    .line 287
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->a:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    .line 291
    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v3}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    iput-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->n:Lcom/payumoney/core/entity/PaymentEntity;

    .line 293
    invoke-direct {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->a(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 294
    goto :goto_1

    .line 296
    :cond_0
    goto :goto_0

    .line 298
    :cond_1
    :goto_1
    return-void
.end method

.method public setContinueButtonDisable()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 276
    return-void
.end method

.method public setContinueButtonEnable()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->p:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 281
    return-void
.end method

.method public showNoNetworkError()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$string;->no_internet_connection:I

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/utils/ToastUtils;->showLong(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 186
    :cond_0
    return-void
.end method

.method public showProgress(I)V
    .locals 3
    .param p1, "msgString"    # I

    .line 314
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->q:Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/EmiTenureSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;->showProgressDialog(ZLjava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method
