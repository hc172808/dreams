.class final Lcom/payu/upisdk/upiintent/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/upiintent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/upiintent/a;

.field final synthetic b:Lcom/payu/upisdk/upiintent/b;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upiintent/b;Lcom/payu/upisdk/upiintent/a;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/b$1;->b:Lcom/payu/upisdk/upiintent/b;

    iput-object p2, p0, Lcom/payu/upisdk/upiintent/b$1;->a:Lcom/payu/upisdk/upiintent/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/b$1;->b:Lcom/payu/upisdk/upiintent/b;

    invoke-static {p1}, Lcom/payu/upisdk/upiintent/b;->a(Lcom/payu/upisdk/upiintent/b;)Lcom/payu/upisdk/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/payu/upisdk/a;->dismiss()V

    .line 55
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/b$1;->b:Lcom/payu/upisdk/upiintent/b;

    invoke-static {p1}, Lcom/payu/upisdk/upiintent/b;->b(Lcom/payu/upisdk/upiintent/b;)Lcom/payu/upisdk/b/a;

    move-result-object p1

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/b$1;
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/b$1;->a:Lcom/payu/upisdk/upiintent/a;

    .line 1033
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/a;->c:Ljava/lang/String;

    .line 55
    invoke-interface {p1, v0}, Lcom/payu/upisdk/b/a;->a(Ljava/lang/String;)V

    .line 56
    return-void
.end method
