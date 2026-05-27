.class final Lcom/payu/upisdk/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/c/d;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/c/d;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSamsungPaySuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "Class Name: "

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sampay PAYMENT_OPTION_SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    iget-object p1, p1, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    iget-object p1, p1, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    invoke-static {p1}, Lcom/payu/upisdk/c/d;->a(Lcom/payu/upisdk/c/d;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    invoke-static {p1}, Lcom/payu/upisdk/c/d;->a(Lcom/payu/upisdk/c/d;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 106
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    invoke-static {p1}, Lcom/payu/upisdk/c/d;->a(Lcom/payu/upisdk/c/d;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 107
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "onSamsungPayFailure"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    iget-object p1, p1, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    iget-object p1, p1, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    invoke-static {p1}, Lcom/payu/upisdk/c/d;->a(Lcom/payu/upisdk/c/d;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    invoke-static {p1}, Lcom/payu/upisdk/c/d;->a(Lcom/payu/upisdk/c/d;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 112
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    invoke-static {p1}, Lcom/payu/upisdk/c/d;->a(Lcom/payu/upisdk/c/d;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 113
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "onSamsungPayInitialisationSuccess"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sampay ispaymentoption available init sucess upidk samsung"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 115
    new-instance p1, Lcom/payu/upisdk/bean/a;

    invoke-direct {p1}, Lcom/payu/upisdk/bean/a;-><init>()V

    .line 1019
    iput-boolean v3, p1, Lcom/payu/upisdk/bean/a;->a:Z

    .line 117
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    iget-object p1, p1, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_4

    .line 118
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    sget-object v1, Lcom/payu/upisdk/PaymentOption;->SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/payu/upisdk/b;->a(Ljava/lang/String;)V

    .line 119
    :cond_4
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    iget-object v1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    .line 1054
    iput-object v1, p1, Lcom/payu/upisdk/b;->c:Lcom/payu/upisdk/c/d;

    .line 120
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    iget-object p1, p1, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    sget-object v1, Lcom/payu/upisdk/PaymentOption;->SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {p1, v3, v1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 121
    goto :goto_0

    :cond_5
    nop

    .end local p2    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSamsungPayInitialisationFailure"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 122
    new-instance p1, Lcom/payu/upisdk/bean/a;

    invoke-direct {p1}, Lcom/payu/upisdk/bean/a;-><init>()V

    .line 123
    nop

    .line 2019
    iput-boolean v2, p1, Lcom/payu/upisdk/bean/a;->a:Z

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p3, v3

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2043
    iput-object p2, p1, Lcom/payu/upisdk/bean/a;->b:Ljava/lang/String;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Sampay ispaymentoption available init failure upidk sam wrapper 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  1:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p3    # "args":[Ljava/lang/Object;
    aget-object p2, p3, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    iget-object p1, p1, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    if-eqz p1, :cond_6

    .line 127
    nop

    .end local p0    # "this":Lcom/payu/upisdk/c/d$1;
    iget-object p1, p0, Lcom/payu/upisdk/c/d$1;->a:Lcom/payu/upisdk/c/d;

    iget-object p1, p1, Lcom/payu/upisdk/c/d;->a:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    sget-object p2, Lcom/payu/upisdk/PaymentOption;->SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {p1, v2, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 128
    :cond_6
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    sget-object p2, Lcom/payu/upisdk/PaymentOption;->SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {p2}, Lcom/payu/upisdk/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payu/upisdk/b;->b(Ljava/lang/String;)Z

    .line 130
    :cond_7
    :goto_0
    return-object v0
.end method
