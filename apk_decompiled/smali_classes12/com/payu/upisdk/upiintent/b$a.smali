.class final Lcom/payu/upisdk/upiintent/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/upiintent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/payu/upisdk/upiintent/b;


# direct methods
.method public constructor <init>(Lcom/payu/upisdk/upiintent/b;Landroid/view/View;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/b$a;->d:Lcom/payu/upisdk/upiintent/b;

    .line 73
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 74
    move-object p1, p2

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/b$a;->c:Landroid/widget/LinearLayout;

    .line 75
    sget p1, Lcom/payu/upisdk/R$id;->image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/b$a;->a:Landroid/widget/ImageView;

    .line 76
    sget p1, Lcom/payu/upisdk/R$id;->text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/b$a;->b:Landroid/widget/TextView;

    .line 77
    return-void
.end method
