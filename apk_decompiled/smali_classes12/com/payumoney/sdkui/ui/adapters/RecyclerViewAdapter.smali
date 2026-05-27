.class public Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/payumoney/sdkui/ui/events/TextGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;,
        Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;,
        Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lcom/payumoney/sdkui/ui/events/TextGetter;"
    }
.end annotation


# instance fields
.field private final a:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;

.field private f:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;Ljava/util/List;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
    .param p3, "searchContentChangeListener"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;",
            "Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    .local p2, "netBankingOptions":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/PaymentEntity;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->f:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 38
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->e:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;

    .line 39
    new-instance v0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->e:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;-><init>(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$SearchContentChangeListener;Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->a:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;

    .line 40
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->c:Ljava/util/List;

    .line 41
    iput-object p4, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->f:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->f:Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    return-object p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getContactByName(Ljava/lang/String;)Lcom/payumoney/core/entity/PaymentEntity;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    .line 73
    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    return-object v1

    .line 76
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->a:Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$CustomFilter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNetBankingOption(I)Lcom/payumoney/core/entity/PaymentEntity;
    .locals 1
    .param p1, "pos"    # I

    .line 87
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    return-object v0
.end method

.method public getNetBankingOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public getNetbankingOptionByName(Ljava/lang/String;)Lcom/payumoney/core/entity/PaymentEntity;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/core/entity/PaymentEntity;

    .line 92
    invoke-virtual {v1}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    return-object v1

    .line 95
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextFromAdapter(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .line 107
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;
    .param p2, "position"    # I

    .line 58
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/PaymentEntity;

    .line 59
    iget-object v1, p1, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p1, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$1;-><init>(Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;Lcom/payumoney/core/entity/PaymentEntity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    sget v1, Lcom/payumoney/sdkui/R$layout;->bank_row_details:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;

    invoke-direct {v1, v0}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter$NetBankingOptionsViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
