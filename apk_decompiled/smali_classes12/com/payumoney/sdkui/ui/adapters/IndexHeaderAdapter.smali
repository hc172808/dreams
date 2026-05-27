.class public Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;,
        Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$IndexViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[C

.field private b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;


# direct methods
.method public constructor <init>([CLcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;)V
    .locals 0
    .param p1, "data"    # [C
    .param p2, "style"    # Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->a:[C

    .line 27
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    .line 28
    return-void
.end method

.method private a(CC)Ljava/lang/Boolean;
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-ne p1, p2, :cond_0

    .line 90
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 92
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(I)Ljava/lang/Boolean;
    .locals 2

    .line 79
    if-nez p1, :cond_0

    .line 80
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->a:[C

    add-int/lit8 v1, p1, -0x1

    aget-char v1, v0, v1

    aget-char p1, v0, p1

    invoke-direct {p0, v1, p1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->a(CC)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 84
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->a:[C

    array-length v0, v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$IndexViewHolder;

    .line 67
    iget-object v1, v0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$IndexViewHolder;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->a:[C

    aget-char v2, v2, p2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0, p2}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->a(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v0, v0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$IndexViewHolder;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, v0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$IndexViewHolder;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    sget v1, Lcom/payumoney/sdkui/R$layout;->sticky_row_details:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getRowHeigh()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 39
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getRowHeigh()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getStickyWidth()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_0
    sget v1, Lcom/payumoney/sdkui/R$id;->sticky_row_index:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 47
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 51
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextSize()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextStyle()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 55
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->b:Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;

    invoke-virtual {v3}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->getTextStyle()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 59
    :cond_3
    new-instance v1, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$IndexViewHolder;

    invoke-direct {v1, v0}, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$IndexViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setDataSet([C)V
    .locals 0
    .param p1, "dataSet"    # [C

    .line 103
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;->a:[C

    .line 104
    return-void
.end method
