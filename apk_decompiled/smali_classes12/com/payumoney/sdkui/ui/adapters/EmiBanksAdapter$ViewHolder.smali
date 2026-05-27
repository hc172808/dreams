.class Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/RelativeLayout;

.field final synthetic e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 137
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    .line 138
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 139
    sget v0, Lcom/payumoney/sdkui/R$id;->textview_recyclerview_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->a:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/payumoney/sdkui/R$id;->imageview_recyclerview_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/payumoney/sdkui/R$id;->view_more_bank:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->b:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/payumoney/sdkui/R$id;->static_bank_item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->d:Landroid/widget/RelativeLayout;

    .line 143
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 148
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;I)I

    .line 151
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->d(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->d(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-interface {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;->onEmiBankSelected(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 153
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->notifyDataSetChanged()V

    .line 156
    :cond_0
    return-void
.end method
