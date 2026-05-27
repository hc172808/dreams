.class public Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmiTenureViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/CheckBox;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field final synthetic f:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;
    .param p2, "emiTenureRow"    # Landroid/view/View;

    .line 86
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->f:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;

    .line 87
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    sget v0, Lcom/payumoney/sdkui/R$id;->cb_emi_tenure:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->a:Landroid/widget/CheckBox;

    .line 90
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_emi_tenure:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->b:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_emi_amount:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->c:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/payumoney/sdkui/R$id;->tv_emi_interest:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->d:Landroid/widget/TextView;

    .line 94
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->e:Landroid/view/View;

    .line 96
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->f:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;I)I

    .line 102
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->f:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 104
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->f:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;)Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->f:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->b(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getEmiTenures()Ljava/util/List;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->f:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/EmiTenure;

    .line 108
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$EmiTenureViewHolder;->f:Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter;)Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/payumoney/sdkui/ui/adapters/EmiTenureRecyclerViewAdapter$OnTenureSelectedListener;->onTenureSelected(Lcom/payumoney/core/entity/EmiTenure;)V

    .line 110
    :cond_0
    return-void
.end method
