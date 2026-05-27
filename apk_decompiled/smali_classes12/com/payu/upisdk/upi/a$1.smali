.class final Lcom/payu/upisdk/upi/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/upi/a;->onCancel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/payu/upisdk/upi/a;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upi/a;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/payu/upisdk/upi/a$1;->b:Lcom/payu/upisdk/upi/a;

    iput-object p2, p0, Lcom/payu/upisdk/upi/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$1;->b:Lcom/payu/upisdk/upi/a;

    .line 1023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 160
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/upisdk/upi/a$1;->b:Lcom/payu/upisdk/upi/a;

    .line 2023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/payu/upisdk/upi/a$1;->b:Lcom/payu/upisdk/upi/a;

    .line 3023
    iget-object v1, v1, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 162
    sget v2, Lcom/payu/upisdk/R$string;->cb_result:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/upisdk/upi/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/payu/upisdk/upi/a$1;->b:Lcom/payu/upisdk/upi/a;

    .line 4023
    iget-object v1, v1, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 163
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 164
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$1;->b:Lcom/payu/upisdk/upi/a;

    .line 5023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->e:Lcom/payu/upisdk/bean/UpiConfig;

    .line 164
    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/payu/upisdk/bean/UpiConfig;->setPaymentType(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$1;->b:Lcom/payu/upisdk/upi/a;

    .line 6023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 167
    :cond_0
    return-void
.end method
