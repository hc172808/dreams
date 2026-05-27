.class public Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;",
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
            "Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

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

    .line 20
    check-cast p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;
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

    .line 41
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "1"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->amountTv:Landroid/widget/TextView;

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v7, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->getAmount()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "- %s%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->amountTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05006a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->amountTv:Landroid/widget/TextView;

    new-array v6, v5, [Ljava/lang/Object;

    sget-object v7, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->CURRENCY_SIGN:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;

    invoke-virtual {v7}, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->getAmount()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "+ %s%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->amountTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050070

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_2
    goto :goto_1

    :pswitch_0
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    .line 60
    :pswitch_3
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->statusTv:Landroid/widget/TextView;

    const-string v1, "Payment Rejected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->statusIv:Landroid/widget/ImageView;

    const v1, 0x7f070219

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 56
    :pswitch_4
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->statusTv:Landroid/widget/TextView;

    const-string v1, "Payment Completed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->statusIv:Landroid/widget/ImageView;

    const v1, 0x7f0701d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    goto :goto_3

    .line 52
    :pswitch_5
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->statusTv:Landroid/widget/TextView;

    const-string v1, "Payment Pending"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->statusIv:Landroid/widget/ImageView;

    const v1, 0x7f070212

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    nop

    .line 65
    :goto_3
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->remarkTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->timeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->dataArrayList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->getDate_created()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
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

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;
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

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
