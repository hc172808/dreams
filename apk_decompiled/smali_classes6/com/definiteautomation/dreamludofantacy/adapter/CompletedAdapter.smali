.class public Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CompletedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
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
            "Lcom/definiteautomation/dreamludofantacy/model/MatchModel;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

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

    .line 23
    check-cast p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;
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

    .line 44
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v5, "%s Vs %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 48
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "%s Vs Team 2"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "%s Vs Player 2"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 54
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v1, "Team 1 Vs Team 2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 57
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v1, "Player 1 Vs Player 2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->feesTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v5, "%s%s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v6, v1, v3

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPrize()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->timeTv:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPlay_time()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "Played On\n%s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 65
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    const-string v1, "Team"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Team: %d/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 72
    :cond_5
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    const-string v1, "Single"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Player: %d/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    const v1, 0x7f050070

    const-string v2, "Winner: %s"

    const-string v5, "1"

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWin()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getResult_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusLi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    const-string v5, "Won"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    const v5, 0x7f070083

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWinner_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 83
    :cond_6
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    const v6, 0x7f070084

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWin()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getResult_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusLi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    const-string v5, "Lost"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 87
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWinner_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 90
    :cond_7
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    const v7, 0x7f050071

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getResult_status()Ljava/lang/String;

    move-result-object v0

    const-string v8, "2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusLi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    const-string v1, "Reject"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 94
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    const-string v1, "Your submission was rejected."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getResult_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x8

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusLi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getWinner_name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 103
    :cond_9
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusLi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    const-string v1, "Under Review! Result will update soon"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :goto_2
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

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;
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

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
