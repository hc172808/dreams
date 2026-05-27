.class public Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field amountTv:Landroid/widget/TextView;

.field remarkTv:Landroid/widget/TextView;

.field statusIv:Landroid/widget/ImageView;

.field statusTv:Landroid/widget/TextView;

.field timeTv:Landroid/widget/TextView;


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

    .line 83
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    const v0, 0x7f08036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->statusTv:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0802fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->remarkTv:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0803ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->timeTv:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f08009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->amountTv:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f08036b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/HistoryAdapter$ViewHolder;->statusIv:Landroid/widget/ImageView;

    .line 89
    return-void
.end method
