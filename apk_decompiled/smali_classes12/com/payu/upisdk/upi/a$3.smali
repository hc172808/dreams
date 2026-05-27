.class final Lcom/payu/upisdk/upi/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/upi/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/upi/a;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upi/a;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 1023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 215
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 2023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 3023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->c:Ljava/lang/Boolean;

    .line 217
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Class Name: "

    if-eqz v0, :cond_1

    .line 219
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 219
    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 4081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 220
    iget-object v1, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 5023
    iget-object v1, v1, Lcom/payu/upisdk/upi/a;->b:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 6023
    iget-object v2, v2, Lcom/payu/upisdk/upi/a;->d:Ljava/lang/String;

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "No PayUUpiSdkCallback found,used when trying payment through CB, please assign a callback: com.payu.upisdk.UpiData.setPayUPICallback(PayUUPICallback payUPICallback)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 6081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 226
    if-eqz v0, :cond_2

    .line 227
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 7081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 227
    iget-object v1, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 8023
    iget-object v1, v1, Lcom/payu/upisdk/upi/a;->b:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 9023
    iget-object v2, v2, Lcom/payu/upisdk/upi/a;->d:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v1, v2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "No PayUUpiSdkCallback found,used when trying payment through UPI SDK, please assign a callback: com.payu.upisdk.UpiData.setPayUPICallback(PayUUPICallback payUPICallback)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 10023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->e:Lcom/payu/upisdk/bean/UpiConfig;

    .line 233
    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/payu/upisdk/bean/UpiConfig;->setPaymentType(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/payu/upisdk/upi/a$3;->a:Lcom/payu/upisdk/upi/a;

    .line 11023
    iget-object v0, v0, Lcom/payu/upisdk/upi/a;->a:Landroid/app/Activity;

    .line 234
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 236
    :cond_3
    return-void
.end method
