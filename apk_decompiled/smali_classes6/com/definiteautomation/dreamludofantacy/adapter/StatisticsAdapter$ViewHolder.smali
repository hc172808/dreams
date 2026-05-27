.class public Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field dateTv:Landroid/widget/TextView;

.field feesTv:Landroid/widget/TextView;

.field posTv:Landroid/widget/TextView;

.field prizeTv:Landroid/widget/TextView;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    const v0, 0x7f0802da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->posTv:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0803d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f080140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->dateTv:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->feesTv:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0802e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/StatisticsAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    .line 73
    return-void
.end method
