.class public Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OngoingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;,
        Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;",
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

.field private mOnItemClickListener:Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$OnItemClickListener;


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

    .line 36
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/MatchModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$OngoingAdapter(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->mOnItemClickListener:Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-interface {v0, p2, v1, p1}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/definiteautomation/dreamludofantacy/model/MatchModel;I)V

    .line 154
    :cond_0
    return-void
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

    .line 25
    check-cast p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;
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

    .line 51
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "%s Vs %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 55
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%s Vs Team 2"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%s Vs Player 2"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 61
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v5, "Team 1 Vs Team 2"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 64
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    const-string v5, "Player 1 Vs Player 2"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->feesTv:Landroid/widget/TextView;

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getMatch_fee()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "%s%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v7, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v7, v5, v3

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getPrize()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->timeTv:Landroid/widget/TextView;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getStart_time()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "Start On\n%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 72
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getType()I

    move-result v0

    const-string v5, "Hurry Up! Opponent is waiting."

    const-string v6, "Only "

    const-string v7, "Player: %d/%d"

    const-string v8, "#ff0000"

    if-eqz v0, :cond_6

    .line 75
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    const-string v9, "Team"

    invoke-virtual {v0, v9}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v9

    if-lt v0, v9, :cond_5

    .line 78
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v0

    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v5}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v5

    sub-int/2addr v0, v5

    .line 83
    .local v0, "leftSize":I
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Team left"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v5, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v6}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "Team: %d/%d"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v0    # "leftSize":I
    goto/16 :goto_1

    .line 88
    :cond_6
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    const-string v9, "Single"

    invoke-virtual {v0, v9}, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v3

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v4

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v2

    if-lt v0, v2, :cond_7

    .line 91
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v2

    sub-int/2addr v0, v2

    .line 95
    .restart local v0    # "leftSize":I
    iget-object v2, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Player left"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .end local v0    # "leftSize":I
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x7f050071

    const-string v5, "Under Review! Result submitted."

    const-string v6, "SUBMITTED"

    const-string v7, "KEY_USER_ID"

    if-ne v0, v4, :cond_8

    :try_start_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v9}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 101
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 103
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 106
    :cond_8
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "Hurry Up! Opponent submitted result."

    const-string v10, "NEXT"

    if-ne v0, v4, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v11, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v11}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v11, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v11}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v11

    if-lt v0, v11, :cond_9

    .line 107
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 109
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 112
    :cond_9
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v11, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v11}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v11, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v11}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v11

    if-ge v0, v11, :cond_a

    .line 113
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 115
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 116
    :cond_a
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v11, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v11}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v11, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v11}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v11

    if-lt v0, v11, :cond_b

    .line 117
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 119
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 120
    :cond_b
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v11, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v11}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 121
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 123
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 126
    :cond_c
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti1_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v2

    if-lt v0, v2, :cond_d

    .line 127
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 129
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 132
    :cond_d
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    if-ne v0, v4, :cond_e

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 133
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 135
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getIs_joined()I

    move-result v0

    if-ne v0, v4, :cond_f

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v2}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getParti2_status()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_joined()I

    move-result v0

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/MatchModel;->getTable_size()I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 137
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 139
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 141
    :cond_f
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusLi:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    const-string v1, "NOT JOINED"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 144
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    :goto_2
    goto :goto_3

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$OngoingAdapter$MMjL4UbNPtPKgVXV3GnbzuaQSqk;

    invoke-direct {v1, p0, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$OngoingAdapter$MMjL4UbNPtPKgVXV3GnbzuaQSqk;-><init>(Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
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

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;
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

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "mItemClickListener"    # Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;->mOnItemClickListener:Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$OnItemClickListener;

    .line 34
    return-void
.end method
