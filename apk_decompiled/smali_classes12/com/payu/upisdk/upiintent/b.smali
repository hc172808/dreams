.class public final Lcom/payu/upisdk/upiintent/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/upisdk/upiintent/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/payu/upisdk/upiintent/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payu/upisdk/upiintent/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/payu/upisdk/b/a;

.field private d:Lcom/payu/upisdk/a;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/payu/upisdk/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/payu/upisdk/upiintent/a;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/payu/upisdk/a;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/b;->a:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/payu/upisdk/upiintent/b;->b:Landroid/content/Context;

    .line 34
    check-cast p2, Lcom/payu/upisdk/b/a;

    iput-object p2, p0, Lcom/payu/upisdk/upiintent/b;->c:Lcom/payu/upisdk/b/a;

    .line 35
    iput-object p3, p0, Lcom/payu/upisdk/upiintent/b;->d:Lcom/payu/upisdk/a;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/upiintent/b;)Lcom/payu/upisdk/a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/payu/upisdk/upiintent/b;->d:Lcom/payu/upisdk/a;

    return-object p0
.end method

.method static synthetic b(Lcom/payu/upisdk/upiintent/b;)Lcom/payu/upisdk/b/a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/payu/upisdk/upiintent/b;->c:Lcom/payu/upisdk/b/a;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 24
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/b;
    check-cast p1, Lcom/payu/upisdk/upiintent/b$a;

    .line 1048
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/b;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/payu/upisdk/upiintent/b$a;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/payu/upisdk/upiintent/a;

    .line 1049
    iget-object v0, p1, Lcom/payu/upisdk/upiintent/b$a;->b:Landroid/widget/TextView;

    .line 2041
    iget-object v1, p2, Lcom/payu/upisdk/upiintent/a;->a:Ljava/lang/String;

    .line 1049
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v0, p1, Lcom/payu/upisdk/upiintent/b$a;->a:Landroid/widget/ImageView;

    .line 2049
    iget-object v1, p2, Lcom/payu/upisdk/upiintent/a;->b:Landroid/graphics/drawable/Drawable;

    .line 1050
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1051
    iget-object p1, p1, Lcom/payu/upisdk/upiintent/b$a;->c:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/payu/upisdk/upiintent/b$1;

    invoke-direct {v0, p0, p2}, Lcom/payu/upisdk/upiintent/b$1;-><init>(Lcom/payu/upisdk/upiintent/b;Lcom/payu/upisdk/upiintent/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 24
    nop

    .line 3042
    .end local p0    # "this":Lcom/payu/upisdk/upiintent/b;
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/b;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/payu/upisdk/R$layout;->cb_layout_package_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3043
    new-instance p2, Lcom/payu/upisdk/upiintent/b$a;

    invoke-direct {p2, p0, p1}, Lcom/payu/upisdk/upiintent/b$a;-><init>(Lcom/payu/upisdk/upiintent/b;Landroid/view/View;)V

    .line 24
    return-object p2
.end method
