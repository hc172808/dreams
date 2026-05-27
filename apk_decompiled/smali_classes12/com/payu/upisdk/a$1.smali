.class final Lcom/payu/upisdk/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/a;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/payu/upisdk/a;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/a;Landroid/view/View;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    iput-object p2, p0, Lcom/payu/upisdk/a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/payu/upisdk/a$1;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 167
    iget-object v1, p0, Lcom/payu/upisdk/a$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    .line 168
    iget-object v0, p0, Lcom/payu/upisdk/a$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    invoke-static {v0}, Lcom/payu/upisdk/a;->a(Lcom/payu/upisdk/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    invoke-static {v0}, Lcom/payu/upisdk/a;->b(Lcom/payu/upisdk/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    invoke-static {v0}, Lcom/payu/upisdk/a;->c(Lcom/payu/upisdk/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payu/upisdk/a;->a(Lcom/payu/upisdk/a;Z)Z

    .line 172
    iget-object v0, p0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    invoke-static {v0}, Lcom/payu/upisdk/a;->d(Lcom/payu/upisdk/a;)V

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/payu/upisdk/a;->a(Lcom/payu/upisdk/a;Z)Z

    .line 176
    iget-object v0, p0, Lcom/payu/upisdk/a$1;->b:Lcom/payu/upisdk/a;

    invoke-static {v0}, Lcom/payu/upisdk/a;->e(Lcom/payu/upisdk/a;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/payu/upisdk/a$1$1;

    invoke-direct {v1, p0}, Lcom/payu/upisdk/a$1$1;-><init>(Lcom/payu/upisdk/a$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 185
    :cond_1
    return-void
.end method
