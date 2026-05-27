.class public Lcom/payu/upisdk/UpiWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

.field private b:Lcom/payu/upisdk/Upi;

.field private c:Lcom/payu/upisdk/callbacks/PayUUPICallback;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/InvocationHandler;)V
    .locals 4
    .param p1, "handler"    # Ljava/lang/reflect/InvocationHandler;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/payu/upisdk/UpiWrapper$1;

    invoke-direct {v0, p0}, Lcom/payu/upisdk/UpiWrapper$1;-><init>(Lcom/payu/upisdk/UpiWrapper;)V

    iput-object v0, p0, Lcom/payu/upisdk/UpiWrapper;->c:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 94
    const-class v0, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    aput-object v3, v1, v2

    .line 94
    .end local p1    # "handler":Ljava/lang/reflect/InvocationHandler;
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    iput-object p1, p0, Lcom/payu/upisdk/UpiWrapper;->a:Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    .line 99
    nop

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper;
    invoke-static {}, Lcom/payu/upisdk/Upi;->getInstance()Lcom/payu/upisdk/Upi;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/UpiWrapper;->b:Lcom/payu/upisdk/Upi;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/payu/upisdk/UpiWrapper;->a:Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    return-object p0
.end method


# virtual methods
.method public checkForPaymentAvailability(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paymentOptionHash"    # Ljava/lang/String;
    .param p3, "user_credentials"    # Ljava/lang/String;
    .param p4, "paymentType"    # Ljava/lang/String;
    .param p5, "merchantKey"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper;->b:Lcom/payu/upisdk/Upi;

    .end local p1    # "context":Landroid/content/Context;
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper;
    .end local p4    # "paymentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/payu/upisdk/UpiWrapper;->c:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 1069
    .end local p2    # "paymentOptionHash":Ljava/lang/String;
    .end local p3    # "user_credentials":Ljava/lang/String;
    .end local p5    # "merchantKey":Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Class Name: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CheckPayment payment Type "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 1070
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1071
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/payu/upisdk/util/b;->a(Landroid/app/Activity;)V

    .line 1072
    nop

    .line 1073
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2090
    iput-object v3, p1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 1074
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string p1, "PPINTENT"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string p1, "upi"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string p1, "TEZ"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string p1, "SAMPAY"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string p1, "INTENT"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    move-object v2, p1

    goto :goto_2

    .line 1088
    :pswitch_0
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->UPI_INTENT:Lcom/payu/upisdk/PaymentOption;

    move-object v2, p1

    goto :goto_2

    .line 1085
    :pswitch_1
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->UPI_COLLECT:Lcom/payu/upisdk/PaymentOption;

    .line 1086
    move-object v2, p1

    goto :goto_2

    .line 1082
    :pswitch_2
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

    .line 1083
    move-object v2, p1

    goto :goto_2

    .line 1079
    :pswitch_3
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    .line 1080
    move-object v2, p1

    goto :goto_2

    .line 1076
    :pswitch_4
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->PHONEPE:Lcom/payu/upisdk/PaymentOption;

    .line 1077
    move-object v2, p1

    .line 1090
    :goto_2
    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/payu/upisdk/Upi;->checkForPaymentAvailability(Landroid/app/Activity;Lcom/payu/upisdk/PaymentOption;Lcom/payu/upisdk/callbacks/PayUUPICallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7efbd564 -> :sswitch_4
        -0x6ea59797 -> :sswitch_3
        0x14409 -> :sswitch_2
        0x1c52e -> :sswitch_1
        0x7f54b49c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public makePayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "postData"    # Ljava/lang/String;
    .param p3, "isUserCacheEnabled"    # Ljava/lang/Boolean;
    .param p4, "paymentType"    # Ljava/lang/String;
    .param p5, "merchantResponseTimeout"    # Ljava/lang/Integer;
    .param p6, "gmsEnableValue"    # Ljava/lang/Integer;
    .param p7, "customProgressDialogView"    # Landroid/view/View;
    .param p8, "postUrl"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/payu/upisdk/bean/UpiConfig;

    invoke-direct {v0}, Lcom/payu/upisdk/bean/UpiConfig;-><init>()V

    .line 111
    nop

    .end local p5    # "merchantResponseTimeout":Ljava/lang/Integer;
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {v0, p5}, Lcom/payu/upisdk/bean/UpiConfig;->setMerchantResponseTimeout(I)V

    .line 112
    invoke-virtual {v0, p2}, Lcom/payu/upisdk/bean/UpiConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 113
    nop

    .end local p4    # "paymentType":Ljava/lang/String;
    invoke-virtual {v0, p4}, Lcom/payu/upisdk/bean/UpiConfig;->setPaymentType(Ljava/lang/String;)V

    .line 114
    nop

    .end local p8    # "postUrl":Ljava/lang/String;
    invoke-virtual {v0, p8}, Lcom/payu/upisdk/bean/UpiConfig;->setPostUrl(Ljava/lang/String;)V

    .line 115
    nop

    .end local p6    # "gmsEnableValue":Ljava/lang/Integer;
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {v0, p4}, Lcom/payu/upisdk/bean/UpiConfig;->setGmsProviderUpdatedStatus(I)V

    .line 116
    nop

    .end local p3    # "isUserCacheEnabled":Ljava/lang/Boolean;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/payu/upisdk/bean/UpiConfig;->setPhonePeUserCacheEnabled(Z)V

    .line 117
    invoke-static {p2}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p3

    const-string p4, "txnid"

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/payu/upisdk/bean/UpiConfig;->setTransactionID(Ljava/lang/String;)V

    .line 118
    nop

    .end local p2    # "postData":Ljava/lang/String;
    invoke-static {p2}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const-string p3, "key"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/payu/upisdk/bean/UpiConfig;->setMerchantKey(Ljava/lang/String;)V

    .line 119
    nop

    .end local p7    # "customProgressDialogView":Landroid/view/View;
    invoke-virtual {v0, p7}, Lcom/payu/upisdk/bean/UpiConfig;->setProgressDialogCustomView(Landroid/view/View;)V

    .line 121
    iget-object p2, p0, Lcom/payu/upisdk/UpiWrapper;->b:Lcom/payu/upisdk/Upi;

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper;
    iget-object p3, p0, Lcom/payu/upisdk/UpiWrapper;->c:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p2, p3, p1, v0}, Lcom/payu/upisdk/Upi;->makePayment(Lcom/payu/upisdk/callbacks/PayUUPICallback;Landroid/app/Activity;Lcom/payu/upisdk/bean/UpiConfig;)V

    .line 122
    return-void
.end method

.method public verifyVpa(Ljava/lang/String;)V
    .locals 1
    .param p1, "verifyVpaHash"    # Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2094
    iget-object v0, v0, Lcom/payu/upisdk/b;->e:Lcom/payu/upisdk/upi/IValidityCheck;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3094
    iget-object v0, v0, Lcom/payu/upisdk/b;->e:Lcom/payu/upisdk/upi/IValidityCheck;

    .line 141
    nop

    .end local p1    # "verifyVpaHash":Ljava/lang/String;
    invoke-interface {v0, p1}, Lcom/payu/upisdk/upi/IValidityCheck;->verifyVpa(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method
