.class public Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OngoingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field feesTv:Landroid/widget/TextView;

.field prizeTv:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field roomSizeTv:Landroid/widget/TextView;

.field roomStatusTv:Landroid/widget/TextView;

.field statusBt:Landroid/widget/Button;

.field statusLi:Landroid/widget/LinearLayout;

.field timeTv:Landroid/widget/TextView;

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

    .line 180
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 181
    const v0, 0x7f0803d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0802e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0803ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->timeTv:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->feesTv:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f080441

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f080317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f080318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->roomStatusTv:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f08036a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    .line 189
    const v0, 0x7f08036c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->statusLi:Landroid/widget/LinearLayout;

    .line 190
    const v0, 0x7f080414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    .line 191
    const v0, 0x7f0802e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/OngoingAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 192
    return-void
.end method
