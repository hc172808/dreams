.class public Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;,
        Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Lcom/payumoney/core/entity/PaymentEntity;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/payumoney/core/entity/PaymentEntity;Landroid/content/Context;Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;)V
    .locals 1
    .param p1, "selectedEmiBank"    # Lcom/payumoney/core/entity/PaymentEntity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onTenureSelectedListener"    # Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->d:I

    .line 31
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->a:Lcom/payumoney/core/entity/PaymentEntity;

    .line 32
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->b:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->c:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->d:I

    return p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;)Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->c:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;

    return-object p0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;)Lcom/payumoney/core/entity/PaymentEntity;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->a:Lcom/payumoney/core/entity/PaymentEntity;

    return-object p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->d:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->a:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getEmiTenures()Ljava/util/List;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 66
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;
    .param p2, "position"    # I

    .line 45
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->a:Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getEmiTenures()Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/EmiTenure;

    .line 48
    iget-object v1, p1, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 49
    iget-object v1, p1, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->a:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->d:I

    const/4 v4, 0x1

    if-ne v3, p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    nop

    .line 52
    invoke-virtual {v0}, Lcom/payumoney/core/entity/EmiTenure;->getEmiBankInterest()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v3, p1, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->b:Landroid/widget/TextView;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/EmiTenure;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v1, v5, v4

    const-string v1, "%s@%s%%"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p1, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->b:Landroid/content/Context;

    sget v5, Lcom/payumoney/sdkui/R$string;->pnp_amount_text:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/EmiTenure;->getEmiValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p1, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->b:Landroid/content/Context;

    sget v5, Lcom/payumoney/sdkui/R$string;->pnp_amount_text:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/EmiTenure;->getEmiInterestPaid()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->e:Landroid/view/View;

    iget v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->d:I

    if-ne v1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 75
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$layout;->emi_tenure_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;-><init>(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;Landroid/view/View;)V

    .line 40
    return-object v1
.end method
