.class public Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private final dataArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "applicationContext",
            "dataArrayList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->dataArrayList:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 19
    check-cast p1, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 39
    add-int/lit8 v0, p2, 0x1

    .line 41
    .local v0, "i":I
    iget-object v1, p1, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->posTv:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p1, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "#%s Board Number"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p1, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->dateTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;

    invoke-virtual {v3}, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->getPlay_time()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p1, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->feesTv:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v6, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->getMatch_fee()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "%s%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->getWin()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p1, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;

    invoke-virtual {v4}, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->getWon_prize()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p1, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "%s0"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
