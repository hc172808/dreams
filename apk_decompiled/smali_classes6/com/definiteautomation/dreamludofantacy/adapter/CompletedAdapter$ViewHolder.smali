.class public Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CompletedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter;
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

    .line 127
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 128
    const v0, 0x7f0803d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0802e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->prizeTv:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0803ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->timeTv:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->feesTv:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f080441

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->winnerTv:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f080317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->roomSizeTv:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f08036a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusBt:Landroid/widget/Button;

    .line 135
    const v0, 0x7f080414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->typeTv:Lcom/definiteautomation/dreamludofantacy/view/VerticalTextView;

    .line 136
    const v0, 0x7f0802e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 137
    const v0, 0x7f08036c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/CompletedAdapter$ViewHolder;->statusLi:Landroid/widget/LinearLayout;

    .line 138
    return-void
.end method
