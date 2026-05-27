.class public Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UpcomingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field feesTv:Landroid/widget/TextView;

.field joinBt:Landroid/widget/Button;

.field prizeTv:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field roomSizeTv:Landroid/widget/TextView;

.field roomStatusTv:Landroid/widget/TextView;

.field timerTv:Landroid/widget/TextView;

.field titleTv:Landroid/widget/TextView;

.field typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

.field winnerTv:Landroid/widget/TextView;


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

    .line 201
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 202
    const v0, 0x7f0803d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f0802e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f0803ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->timerTv:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->feesTv:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f080441

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f080317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f080318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0801f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->joinBt:Landroid/widget/Button;

    .line 210
    const v0, 0x7f080414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    .line 211
    const v0, 0x7f0802e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/UpcomingAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 212
    return-void
.end method
