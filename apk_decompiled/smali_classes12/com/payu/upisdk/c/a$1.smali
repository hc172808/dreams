.class final Lcom/payu/upisdk/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/c/a;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/c/a;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPaymentSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "txnId"

    const-string v1, "key"

    const-string v2, "trxn_status_upi_sdk"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {p1}, Lcom/payu/upisdk/c/a;->d(Lcom/payu/upisdk/c/a;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object p1

    iget-object v5, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v5}, Lcom/payu/upisdk/c/a;->a(Lcom/payu/upisdk/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v6}, Lcom/payu/upisdk/c/a;->c(Lcom/payu/upisdk/c/a;)Lcom/payu/upisdk/util/b;

    iget-object v6, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v6}, Lcom/payu/upisdk/c/a;->b(Lcom/payu/upisdk/c/a;)Lcom/payu/upisdk/bean/UpiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v6}, Lcom/payu/upisdk/c/a;->c(Lcom/payu/upisdk/c/a;)Lcom/payu/upisdk/util/b;

    iget-object v6, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v6}, Lcom/payu/upisdk/c/a;->b(Lcom/payu/upisdk/c/a;)Lcom/payu/upisdk/bean/UpiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "success_transaction_upi_sdk_gpay"

    invoke-static {v5, v2, v6, v1, v0}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {p1}, Lcom/payu/upisdk/c/a;->a(Lcom/payu/upisdk/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {p1}, Lcom/payu/upisdk/c/a;->a(Lcom/payu/upisdk/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    .line 41
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {p1}, Lcom/payu/upisdk/c/a;->a(Lcom/payu/upisdk/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v5, "onPaymentFailure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {p1}, Lcom/payu/upisdk/c/a;->d(Lcom/payu/upisdk/c/a;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object p1

    iget-object v5, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v5}, Lcom/payu/upisdk/c/a;->a(Lcom/payu/upisdk/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v6}, Lcom/payu/upisdk/c/a;->c(Lcom/payu/upisdk/c/a;)Lcom/payu/upisdk/util/b;

    iget-object v6, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v6}, Lcom/payu/upisdk/c/a;->b(Lcom/payu/upisdk/c/a;)Lcom/payu/upisdk/bean/UpiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v6}, Lcom/payu/upisdk/c/a;->c(Lcom/payu/upisdk/c/a;)Lcom/payu/upisdk/util/b;

    iget-object v6, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {v6}, Lcom/payu/upisdk/c/a;->b(Lcom/payu/upisdk/c/a;)Lcom/payu/upisdk/bean/UpiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "failure_transaction_upi_sdk_gpay"

    invoke-static {v5, v2, v6, v1, v0}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Classname :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " PAYMENT_OPTION_FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_2

    .line 47
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {p1}, Lcom/payu/upisdk/c/a;->a(Lcom/payu/upisdk/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {p1}, Lcom/payu/upisdk/c/a;->a(Lcom/payu/upisdk/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_8

    .line 49
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    invoke-static {p1}, Lcom/payu/upisdk/c/a;->a(Lcom/payu/upisdk/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 50
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPaymentInitialisationSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "Class Name: "

    if-eqz p1, :cond_5

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ispaymentoption available init sucess upidk GpayWrapper"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_4

    .line 53
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    sget-object v0, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {p1, v3, v0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 54
    :cond_4
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    sget-object v0, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/upisdk/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/upisdk/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPaymentInitialisationFailure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "Value "

    const-string v2, "PAYMENT_OPTION_INIT_FAILURE upidk GpayWrapper cbListerenr "

    if-eqz p1, :cond_7

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object v2, v2, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p3, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_6

    .line 61
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    sget-object v0, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/upisdk/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLjava/lang/String;)V

    .line 63
    :cond_6
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    sget-object v0, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/upisdk/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/upisdk/b;->b(Ljava/lang/String;)Z

    goto :goto_0

    .line 64
    :cond_7
    nop

    .end local p2    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onGpayErrorReceived"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p2, p2, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_8

    .line 69
    nop

    .end local p0    # "this":Lcom/payu/upisdk/c/a$1;
    iget-object p1, p0, Lcom/payu/upisdk/c/a$1;->a:Lcom/payu/upisdk/c/a;

    iget-object p1, p1, Lcom/payu/upisdk/c/a;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    aget-object p2, p3, v4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .end local p3    # "args":[Ljava/lang/Object;
    aget-object p3, p3, v3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 72
    :cond_8
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
