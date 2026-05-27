.class public Lcom/payu/custombrowser/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/a;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/a;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/custombrowser/R$id;->bank_logo:I

    if-ne v0, v1, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    invoke-static {v0}, Lcom/payu/custombrowser/a;->a(Lcom/payu/custombrowser/a;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    iget-object v1, v1, Lcom/payu/custombrowser/a;->mResetCounter:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    invoke-static {v0}, Lcom/payu/custombrowser/a;->b(Lcom/payu/custombrowser/a;)I

    .line 1153
    iget-object v0, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    invoke-static {v0}, Lcom/payu/custombrowser/a;->a(Lcom/payu/custombrowser/a;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    iget-object v1, v1, Lcom/payu/custombrowser/a;->mResetCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1155
    iget-object v0, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payu/custombrowser/a;->a(Lcom/payu/custombrowser/a;I)I

    .line 1156
    iget-object v0, p0, Lcom/payu/custombrowser/a$b;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    const-string v2, "Version Name: 7.5.1"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1159
    :cond_1
    return-void
.end method
