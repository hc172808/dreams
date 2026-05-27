.class public Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;,
        Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;",
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

.field private final c:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;

.field private final d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "emiBankItemOnSelectListener"    # Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;
    .param p4, "showMoreButton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;",
            "Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;",
            "Z)V"
        }
    .end annotation

    .line 44
    .local p2, "bankCIDArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/PaymentEntity;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->e:I

    .line 45
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->b:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->c:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;

    .line 48
    iput-boolean p4, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->d:Z

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->e:I

    return p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->c:Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$EmiBankItemOnSelectListener;

    return-object p0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->e:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 60
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt p2, v0, :cond_0

    .line 61
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->d:Z

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$1;-><init>(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->d:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->a:Landroid/content/Context;

    sget v4, Lcom/payumoney/sdkui/R$color;->light_gray:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/payumoney/sdkui/ui/utils/Utils;->makeSelectorStaticBankItem(Landroid/content/Context;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->d:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->e:I

    if-ne p2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 80
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    .line 81
    if-eqz v0, :cond_3

    .line 83
    iget-object v1, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    invoke-static {}, Lcom/payumoney/graphics/AssetDownloadManager;->getInstance()Lcom/payumoney/graphics/AssetDownloadManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$2;-><init>(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;)V

    invoke-virtual {v1, v0, v2}, Lcom/payumoney/graphics/AssetDownloadManager;->getBankBitmapByBankCode(Ljava/lang/String;Lcom/payumoney/graphics/BitmapCallBack;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$layout;->static_bank_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter$ViewHolder;-><init>(Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setmSelectedItem(I)V
    .locals 0
    .param p1, "mSelectedItem"    # I

    .line 38
    iput p1, p0, Lcom/payumoney/sdkui/ui/adapters/EmiBanksAdapter;->e:I

    .line 39
    return-void
.end method
