.class public Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payu/custombrowser/bean/ReviewOrderData;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/payu/custombrowser/bean/ReviewOrderData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 23
    .local p1, "reviewOrderItems":Ljava/util/List;, "Ljava/util/List<Lcom/payu/custombrowser/bean/ReviewOrderData;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;->a:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;->b:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;->onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;
    .param p2, "position"    # I

    .line 37
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/bean/ReviewOrderData;

    .line 39
    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/ReviewOrderData;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p1, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/ReviewOrderData;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p1, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    sget v1, Lcom/payumoney/sdkui/R$layout;->review_order_row_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter$ReviewOrderRecyclerViewHolder;-><init>(Lcom/payumoney/sdkui/ui/adapters/ReviewOrderRecyclerViewAdapter;Landroid/view/View;)V

    return-object v1
.end method
