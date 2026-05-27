.class Lcom/payu/custombrowser/b$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/b;->cbOldFlowOnCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 512
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "backButton"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "user_input"

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    sget v5, Lcom/payu/custombrowser/R$style;->cb_dialog:I

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 516
    const-string v1, "Do you really want to cancel the transaction ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 517
    new-instance v1, Lcom/payu/custombrowser/b$16$1;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/b$16$1;-><init>(Lcom/payu/custombrowser/b$16;)V

    const-string v4, "Ok"

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    new-instance v1, Lcom/payu/custombrowser/b$16$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/b$16$2;-><init>(Lcom/payu/custombrowser/b$16;)V

    const-string v4, "Cancel"

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 540
    iget-object v1, p0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    const-string v4, "payu_back_button"

    invoke-virtual {v1, v3, v4}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/b;->onBackPressed(Landroid/app/AlertDialog$Builder;)V

    .line 542
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 544
    return v2

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    const-string v2, "m_back_button"

    invoke-virtual {v0, v3, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/b;->onBackPressed(Landroid/app/AlertDialog$Builder;)V

    .line 548
    iget-object v0, p0, Lcom/payu/custombrowser/b$16;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 552
    :cond_1
    return v1
.end method
