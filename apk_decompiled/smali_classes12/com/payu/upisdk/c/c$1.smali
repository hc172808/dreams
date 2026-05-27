.class final Lcom/payu/upisdk/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/c/c;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/c/c;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

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

    const-string v0, "onPaymentOptionSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "txnId"

    const-string v1, "key"

    const-string v2, "trxn_status_upi_sdk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {p1}, Lcom/payu/upisdk/c/c;->d(Lcom/payu/upisdk/c/c;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object p1

    iget-object v5, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v5}, Lcom/payu/upisdk/c/c;->a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v6}, Lcom/payu/upisdk/c/c;->c(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/util/b;

    iget-object v6, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v6}, Lcom/payu/upisdk/c/c;->b(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/bean/UpiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v6}, Lcom/payu/upisdk/c/c;->c(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/util/b;

    iget-object v6, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v6}, Lcom/payu/upisdk/c/c;->b(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/bean/UpiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "success_transaction_upi_sdk_phonepe"

    invoke-static {v5, v2, v6, v1, v0}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p1, p1, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p1, p1, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {p1}, Lcom/payu/upisdk/c/c;->a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {p1}, Lcom/payu/upisdk/c/c;->a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 41
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {p1}, Lcom/payu/upisdk/c/c;->a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 42
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v5, "onPaymentOptionFailure"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {p1}, Lcom/payu/upisdk/c/c;->d(Lcom/payu/upisdk/c/c;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object p1

    iget-object v5, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v5}, Lcom/payu/upisdk/c/c;->a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v6}, Lcom/payu/upisdk/c/c;->c(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/util/b;

    iget-object v6, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v6}, Lcom/payu/upisdk/c/c;->b(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/bean/UpiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v6}, Lcom/payu/upisdk/c/c;->c(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/util/b;

    iget-object v6, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {v6}, Lcom/payu/upisdk/c/c;->b(Lcom/payu/upisdk/c/c;)Lcom/payu/upisdk/bean/UpiConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "failure_transaction_upi_sdk_phonepe"

    invoke-static {v5, v2, v6, v1, v0}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 44
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

    .line 45
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p1, p1, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p1, p1, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {p1}, Lcom/payu/upisdk/c/c;->a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {p1}, Lcom/payu/upisdk/c/c;->a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 48
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    invoke-static {p1}, Lcom/payu/upisdk/c/c;->a(Lcom/payu/upisdk/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 49
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPaymentOptionInitialisationSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "Class Name: "

    if-eqz p1, :cond_5

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ispaymentoption available init sucess upidk phonepewrapper"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p1, p1, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_4

    .line 52
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p1, p1, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    const/4 v0, 0x1

    sget-object v1, Lcom/payu/upisdk/PaymentOption;->PHONEPE:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {p1, v0, v1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 53
    :cond_4
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    sget-object v0, Lcom/payu/upisdk/PaymentOption;->PHONEPE:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/upisdk/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/upisdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_5
    nop

    .end local p2    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPaymentOptionInitialisationFailure"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PAYMENT_OPTION_INIT_FAILURE upidk phonepewrapper cbListerenr "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p2, p2, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Value "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p3    # "args":[Ljava/lang/Object;
    aget-object p2, p3, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p1, p1, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_6

    .line 60
    nop

    .end local p0    # "this":Lcom/payu/upisdk/c/c$1;
    iget-object p1, p0, Lcom/payu/upisdk/c/c$1;->a:Lcom/payu/upisdk/c/c;

    iget-object p1, p1, Lcom/payu/upisdk/c/c;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    sget-object p2, Lcom/payu/upisdk/PaymentOption;->PHONEPE:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {p1, v4, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 62
    :cond_6
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    sget-object p2, Lcom/payu/upisdk/PaymentOption;->PHONEPE:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {p2}, Lcom/payu/upisdk/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payu/upisdk/b;->b(Ljava/lang/String;)Z

    .line 64
    :cond_7
    :goto_0
    return-object v3
.end method
