.class final Lcom/payu/upisdk/upi/a$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/upi/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/upi/a;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upi/a;J)V
    .locals 2

    .line 178
    iput-object p1, p0, Lcom/payu/upisdk/upi/a$2;->a:Lcom/payu/upisdk/upi/a;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$2;->a:Lcom/payu/upisdk/upi/a;

    .line 1023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 185
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/upisdk/upi/a$2;->a:Lcom/payu/upisdk/upi/a;

    .line 2023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 185
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$2;->a:Lcom/payu/upisdk/upi/a;

    .line 3023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 186
    new-instance v1, Lcom/payu/upisdk/upi/a$2$1;

    invoke-direct {v1, p0}, Lcom/payu/upisdk/upi/a$2$1;-><init>(Lcom/payu/upisdk/upi/a$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .line 182
    return-void
.end method
