.class Lcom/payu/custombrowser/Bank$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->fillOTPCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Z)V
    .locals 0

    .line 1476
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    iput-boolean p2, p0, Lcom/payu/custombrowser/Bank$9;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1479
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank$9;->a:Z

    iput-boolean v1, v0, Lcom/payu/custombrowser/Bank;->isOTPFilled:Z

    .line 1480
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->isOTPFilled:Z

    if-eqz v0, :cond_1

    .line 1481
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/payu/custombrowser/Bank;->otp:Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->otpTriggered:Z

    if-eqz v0, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/payu/custombrowser/Bank;->otpTriggered:Z

    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->h:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_catchAll_success_msg:I

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1487
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    invoke-static {v2}, Lcom/payu/custombrowser/Bank;->e(Lcom/payu/custombrowser/Bank;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    invoke-static {v1, v0}, Lcom/payu/custombrowser/Bank;->a(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1490
    :cond_0
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$9;->b:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :goto_0
    goto :goto_1

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1498
    :cond_1
    :goto_1
    return-void
.end method
