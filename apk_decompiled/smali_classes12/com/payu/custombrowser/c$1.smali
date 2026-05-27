.class Lcom/payu/custombrowser/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/payu/custombrowser/c;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/c;Landroid/view/View;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/payu/custombrowser/c$1;->b:Lcom/payu/custombrowser/c;

    iput-object p2, p0, Lcom/payu/custombrowser/c$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 110
    iget-object v1, p0, Lcom/payu/custombrowser/c$1;->b:Lcom/payu/custombrowser/c;

    invoke-static {v1}, Lcom/payu/custombrowser/c;->a(Lcom/payu/custombrowser/c;)Lcom/payu/custombrowser/c$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/payu/custombrowser/c$a;->a()V

    .line 112
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/payu/custombrowser/c$1;->b:Lcom/payu/custombrowser/c;

    invoke-static {v2}, Lcom/payu/custombrowser/c;->b(Lcom/payu/custombrowser/c;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 113
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setZAdjustment(I)V

    .line 117
    iget-object v0, p0, Lcom/payu/custombrowser/c$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v1, Lcom/payu/custombrowser/c$1$1;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/c$1$1;-><init>(Lcom/payu/custombrowser/c$1;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method
