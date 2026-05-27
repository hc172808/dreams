.class public Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReviewOrderRecyclerViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 55
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;->c:Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;

    .line 56
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    sget v0, Lcom/payumoney/sdkui/R$id;->review_order_item_key:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;->a:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/payumoney/sdkui/R$id;->review_order_item_value:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;->b:Landroid/widget/TextView;

    .line 60
    return-void
.end method
