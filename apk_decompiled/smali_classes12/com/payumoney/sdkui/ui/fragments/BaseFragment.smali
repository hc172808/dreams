.class public abstract Lcom/payumoney/sdkui/ui/fragments/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field protected b:Ljava/lang/String;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field protected j:D

.field k:D

.field l:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;F)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 136
    :cond_0
    return-void
.end method

.method public getConvenieneceFee()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->k:D

    return-wide v0
.end method

.method public hideConvenienceFeeOption()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->j:D

    .line 90
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->setDisplayAmount(D)V

    .line 91
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->hideConvenieneceFee()V

    .line 92
    iget-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->j:D

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->updateConvenienceFee(DD)V

    .line 94
    :cond_0
    return-void
.end method

.method public hideConvenieneceFee()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->h:Landroid/widget/TextView;

    const-string v1, "Details"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public initConvenieneceFee(Landroid/view/View;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .line 40
    sget v0, Lcom/payumoney/sdkui/R$id;->quick_pay_balance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->g:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/payumoney/sdkui/R$id;->r_amount_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->l:Landroid/widget/LinearLayout;

    .line 42
    sget v0, Lcom/payumoney/sdkui/R$id;->l_convenience_fee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->f:Landroid/widget/LinearLayout;

    .line 43
    sget v0, Lcom/payumoney/sdkui/R$id;->subtotal_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->c:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/payumoney/sdkui/R$id;->convenience_fee_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->d:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/payumoney/sdkui/R$id;->total_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->e:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/payumoney/sdkui/R$id;->show_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->h:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/payumoney/sdkui/R$id;->hide_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->i:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->setUpUIConvenienceFee()V

    .line 49
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 5
    .param p1, "mAmount"    # Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->b:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->g:Landroid/widget/TextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->quick_pay_amount:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public setConvenieneceFee(D)V
    .locals 4
    .param p1, "convenienceFee"    # D

    .line 33
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netamount"

    invoke-static {v0, v2, v1}, Lcom/payumoney/core/utils/SharedPrefsUtils;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    iput-wide p1, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->k:D

    .line 37
    :cond_0
    return-void
.end method

.method public setDisplayAmount(D)V
    .locals 4
    .param p1, "mAmount"    # D

    .line 104
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {p1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget v1, Lcom/payumoney/sdkui/R$string;->quick_pay_amount:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setUpUIConvenienceFee()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    return-void
.end method

.method public showConvenienceFeeOption()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public showConvenieneceFee()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->h:Landroid/widget/TextView;

    const-string v1, "Hide Details"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$color;->payumoney_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 75
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public updateConvenienceFee(DD)V
    .locals 5
    .param p1, "mAmount"    # D
    .param p3, "mConvenienceFee"    # D

    .line 112
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0, p3, p4}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->setConvenieneceFee(D)V

    .line 114
    add-double v0, p1, p3

    iput-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->j:D

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->setDisplayAmount(D)V

    .line 117
    iget-wide v0, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->j:D

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v0

    .line 118
    sget v1, Lcom/payumoney/sdkui/R$string;->pnp_amount_text:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {p3, p4}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v0

    .line 122
    sget v1, Lcom/payumoney/sdkui/R$string;->pnp_amount_text:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {p1, p2}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v0

    .line 126
    sget v1, Lcom/payumoney/sdkui/R$string;->pnp_amount_text:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    return-void
.end method
