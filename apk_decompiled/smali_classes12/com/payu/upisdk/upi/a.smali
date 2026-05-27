.class public final Lcom/payu/upisdk/upi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Boolean;

.field d:Ljava/lang/String;

.field e:Lcom/payu/upisdk/bean/UpiConfig;

.field private f:Landroid/os/CountDownTimer;

.field private g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/payu/payuanalytics/analytics/PayUAnalytics;Lcom/payu/upisdk/bean/UpiConfig;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/payu/upisdk/upi/a;->c:Ljava/lang/Boolean;

    .line 39
    iput-object p1, p0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/payu/upisdk/upi/a;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 41
    iput-object p3, p0, Lcom/payu/upisdk/upi/a;->e:Lcom/payu/upisdk/bean/UpiConfig;

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 117
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/payu/upisdk/upi/a;->g:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v1, p0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v2}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    return-void

    .line 121
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    return-void
.end method

.method private b()V
    .locals 3

    .line 178
    new-instance v0, Lcom/payu/upisdk/upi/a$2;

    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 1033
    iget-object v1, v1, Lcom/payu/upisdk/b;->d:Lcom/payu/upisdk/bean/UpiConfig;

    .line 178
    invoke-virtual {v1}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantResponseTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/payu/upisdk/upi/a$2;-><init>(Lcom/payu/upisdk/upi/a;J)V

    .line 198
    invoke-virtual {v0}, Lcom/payu/upisdk/upi/a$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/upi/a;->f:Landroid/os/CountDownTimer;

    .line 199
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/payu/upisdk/upi/a;->f:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/payu/upisdk/upi/a$3;

    invoke-direct {v1, p0}, Lcom/payu/upisdk/upi/a$3;-><init>(Lcom/payu/upisdk/upi/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    :cond_1
    return-void
.end method

.method public final onCancel()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onCancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 146
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/payu/upisdk/upi/a;->onCancel(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onCancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/payu/upisdk/upi/a$1;

    .end local p0    # "this":Lcom/payu/upisdk/upi/a;
    .end local p1    # "result":Ljava/lang/String;
    invoke-direct {v1, p0, p1}, Lcom/payu/upisdk/upi/a$1;-><init>(Lcom/payu/upisdk/upi/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    :cond_0
    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 55
    nop

    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/upi/a;->d:Ljava/lang/String;

    .line 56
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upi/a;
    invoke-virtual {p0}, Lcom/payu/upisdk/upi/a;->a()V

    .line 57
    return-void
.end method

.method public final onPayuFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onPayuFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "trxn_status_upi_sdk"

    const-string v1, "failure_transaction"

    invoke-direct {p0, v0, v1}, Lcom/payu/upisdk/upi/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/payu/upisdk/upi/a;->c:Ljava/lang/Boolean;

    .line 73
    nop

    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/upi/a;->b:Ljava/lang/String;

    .line 77
    :cond_0
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upi/a;
    invoke-direct {p0}, Lcom/payu/upisdk/upi/a;->b()V

    .line 78
    return-void
.end method

.method public final onPayuSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 101
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/payu/upisdk/upi/a;->c:Ljava/lang/Boolean;

    .line 102
    const-string v0, "trxn_status_upi_sdk"

    const-string v1, "success_transaction"

    invoke-direct {p0, v0, v1}, Lcom/payu/upisdk/upi/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/payu/upisdk/upi/a;->b:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onPayUSucess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p1    # "result":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 105
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upi/a;
    invoke-direct {p0}, Lcom/payu/upisdk/upi/a;->b()V

    .line 106
    return-void
.end method

.method public final onSuccess()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 87
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/payu/upisdk/upi/a;->onSuccess(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 135
    nop

    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/upi/a;->d:Ljava/lang/String;

    .line 136
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upi/a;
    invoke-virtual {p0}, Lcom/payu/upisdk/upi/a;->a()V

    .line 137
    return-void
.end method
