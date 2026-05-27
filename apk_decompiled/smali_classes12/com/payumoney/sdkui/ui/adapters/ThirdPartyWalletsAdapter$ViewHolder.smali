.class Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;
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

.field final synthetic e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 127
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    .line 128
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 129
    sget v0, Lcom/payumoney/sdkui/R$id;->textview_recyclerview_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->a:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/payumoney/sdkui/R$id;->imageview_recyclerview_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    .line 131
    sget v0, Lcom/payumoney/sdkui/R$id;->view_more_bank:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->b:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/payumoney/sdkui/R$id;->static_bank_item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->d:Landroid/widget/RelativeLayout;

    .line 133
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;I)I

    .line 141
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->d(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->a(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->c(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->d(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-interface {v0, v1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;->onStaticWalletSelected(Lcom/payumoney/core/entity/PaymentEntity;)V

    .line 143
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->e:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->notifyDataSetChanged()V

    .line 146
    :cond_0
    return-void
.end method
