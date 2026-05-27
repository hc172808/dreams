.class public Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;,
        Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;",
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

.field private final c:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;

.field private final d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "quickPayStaticBankItemListener"    # Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;
    .param p4, "showMoreButton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;",
            "Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;",
            "Z)V"
        }
    .end annotation

    .line 42
    .local p2, "bankCIDArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/PaymentEntity;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->e:I

    .line 43
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->c:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;

    .line 46
    iput-boolean p4, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->d:Z

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->e:I

    return p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->c:Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$QuickPayStaticBankItemListener;

    return-object p0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->e:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 58
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt p2, v0, :cond_0

    .line 59
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->d:Z

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$1;-><init>(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->a:Landroid/content/Context;

    sget v3, Lcom/payumoney/sdkui/R$color;->light_gray:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/payumoney/sdkui/ui/utils/Utils;->makeSelectorStaticBankItem(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->d:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->e:I

    if-ne p2, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 77
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    .line 78
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getShortTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$2;-><init>(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/graphics/AssetDownloadManager;->getBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    .line 100
    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;
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
    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter$ViewHolder;-><init>(Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setmSelectedItem(I)V
    .locals 0
    .param p1, "mSelectedItem"    # I

    .line 36
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/QuickPayNetBankingAdapter;->e:I

    .line 37
    return-void
.end method
