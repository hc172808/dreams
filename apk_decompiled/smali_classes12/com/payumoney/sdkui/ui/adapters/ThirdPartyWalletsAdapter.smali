.class public Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;,
        Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "thirdPartyStaticWalletListener"    # Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;
    .param p4, "shouldShowMoreButton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;",
            "Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;",
            "Z)V"
        }
    .end annotation

    .line 42
    .local p2, "walletsCIDList":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/PaymentEntity;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->d:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->e:I

    .line 43
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->c:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;

    .line 46
    iput-boolean p4, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->d:Z

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->e:I

    return p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->c:Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ThirdPartyStaticWalletListener;

    return-object p0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->e:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 58
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt p2, v0, :cond_1

    .line 59
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$1;-><init>(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 70
    :cond_0
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 75
    :cond_1
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->a:Landroid/content/Context;

    sget v3, Lcom/payumoney/sdkui/R$color;->light_gray:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/payumoney/sdkui/ui/utils/Utils;->makeSelectorStaticBankItem(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->d:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->e:I

    if-ne p2, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 80
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    .line 81
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    .line 82
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$2;-><init>(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/graphics/AssetDownloadManager;->getWalletBitmap(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 104
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$layout;->static_bank_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter$ViewHolder;-><init>(Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setmSelectedItem(I)V
    .locals 0
    .param p1, "mSelectedItem"    # I

    .line 36
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/ThirdPartyWalletsAdapter;->e:I

    .line 37
    return-void
.end method
