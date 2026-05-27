.class Lcom/payu/custombrowser/Bank$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Landroid/widget/TextView;

.field final synthetic g:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 2788
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$20;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$20;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/payu/custombrowser/Bank$20;->c:Landroid/widget/Button;

    iput-object p5, p0, Lcom/payu/custombrowser/Bank$20;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/payu/custombrowser/Bank$20;->e:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/payu/custombrowser/Bank$20;->f:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 2792
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    sget-object v1, Lcom/payu/custombrowser/util/a;->a:Ljava/lang/String;

    const-string v2, "confirm_deduction_y"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->ag:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->ag:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2796
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->ag:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    .line 2802
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2803
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->cb_confirm_transaction:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2804
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_transaction_status:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2805
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->k(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->setVisibility(I)V

    .line 2806
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->k(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a()V

    .line 2807
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2808
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2809
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2810
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2811
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->Q:Z

    if-eqz v0, :cond_1

    .line 2812
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-object v1, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->cb_verify_message_received:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->startSnoozeServiceVerifyPayment(Ljava/lang/String;)V

    goto :goto_0

    .line 2814
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$20;->g:Lcom/payu/custombrowser/Bank;

    iget-object v1, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->cb_user_input_confirm_transaction:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->startSnoozeServiceVerifyPayment(Ljava/lang/String;)V

    .line 2816
    :goto_0
    return-void
.end method
