.class Lcom/payu/custombrowser/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/a;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/a;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 926
    iget-object v0, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 927
    iget-object v0, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-boolean v0, v0, Lcom/payu/custombrowser/a;->H:Z

    if-eqz v0, :cond_1

    .line 928
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 929
    iget-object v1, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    sget v2, Lcom/payu/custombrowser/R$string;->cb_result:I

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v2, v2, Lcom/payu/custombrowser/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    iget-object v1, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    sget v2, Lcom/payu/custombrowser/R$string;->cb_payu_response:I

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v2, v2, Lcom/payu/custombrowser/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    iget-object v1, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v1, v1, Lcom/payu/custombrowser/a;->F:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v1, v1, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v1, v1, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 936
    :goto_0
    goto :goto_1

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->F:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "No PayUCustomBrowserCallback found, please assign a callback: com.payu.custombrowser.PayUCustomBrowserCallback.setPayuCustomBrowserCallback(PayUCustomBrowserCallback payuCustomBrowserCallback)"

    if-eqz v0, :cond_3

    .line 938
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 939
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v1, v1, Lcom/payu/custombrowser/a;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v2, v2, Lcom/payu/custombrowser/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 941
    :cond_2
    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 944
    :cond_3
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 945
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v1, v1, Lcom/payu/custombrowser/a;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v2, v2, Lcom/payu/custombrowser/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 947
    :cond_4
    invoke-static {v1}, Lcom/payu/custombrowser/util/e;->c(Ljava/lang/String;)V

    .line 952
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/a$5;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 954
    :cond_5
    return-void
.end method
