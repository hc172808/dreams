.class public Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field iconTv:Landroid/widget/ImageView;

.field timeTv:Landroid/widget/TextView;

.field titleTV:Landroid/widget/TextView;


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

    .line 70
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    const v0, 0x7f0801d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;->iconTv:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0803d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;->titleTV:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0803ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/NotificationAdapter$ViewHolder;->timeTv:Landroid/widget/TextView;

    .line 74
    return-void
.end method
