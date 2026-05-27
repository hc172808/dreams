.class public Lcom/payu/upisdk/Upi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/payu/upisdk/Upi;

.field public static cbVersion:Ljava/lang/String;

.field public static isRecreating:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/payu/upisdk/Upi;
    .locals 2

    .line 48
    sget-object v0, Lcom/payu/upisdk/Upi;->a:Lcom/payu/upisdk/Upi;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/payu/upisdk/Upi;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/payu/upisdk/Upi;->a:Lcom/payu/upisdk/Upi;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/payu/upisdk/Upi;

    invoke-direct {v1}, Lcom/payu/upisdk/Upi;-><init>()V

    sput-object v1, Lcom/payu/upisdk/Upi;->a:Lcom/payu/upisdk/Upi;

    .line 52
    :cond_0
    sget-object v1, Lcom/payu/upisdk/Upi;->a:Lcom/payu/upisdk/Upi;

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    sget-object v0, Lcom/payu/upisdk/Upi;->a:Lcom/payu/upisdk/Upi;

    return-object v0
.end method


# virtual methods
.method public checkForPaymentAvailability(Landroid/app/Activity;Lcom/payu/upisdk/PaymentOption;Lcom/payu/upisdk/callbacks/PayUUPICallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paymentOption"    # Lcom/payu/upisdk/PaymentOption;
    .param p3, "payUUpiSdkCallback"    # Lcom/payu/upisdk/callbacks/PayUUPICallback;
    .param p4, "paymentOptionHash"    # Ljava/lang/String;
    .param p5, "merchantKey"    # Ljava/lang/String;
    .param p6, "user_credentials"    # Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/payu/upisdk/upiintent/c;

    invoke-direct {v0}, Lcom/payu/upisdk/upiintent/c;-><init>()V

    .line 105
    nop

    .line 2124
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "paymentOption":Lcom/payu/upisdk/PaymentOption;
    .end local p3    # "payUUpiSdkCallback":Lcom/payu/upisdk/callbacks/PayUUPICallback;
    .end local p4    # "paymentOptionHash":Ljava/lang/String;
    .end local p5    # "merchantKey":Ljava/lang/String;
    .end local p6    # "user_credentials":Ljava/lang/String;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    .line 2125
    iput-object p5, v0, Lcom/payu/upisdk/upiintent/c;->c:Ljava/lang/String;

    .line 2126
    invoke-static {p1}, Lcom/payu/upisdk/util/b;->a(Landroid/app/Activity;)V

    .line 2127
    if-eqz p2, :cond_0

    .line 2129
    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3046
    iput-object p2, v1, Lcom/payu/upisdk/b;->h:Lcom/payu/upisdk/PaymentOption;

    .line 2132
    :cond_0
    if-eqz p5, :cond_4

    .line 2133
    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3090
    iput-object p3, v1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 2134
    sget-object v1, Lcom/payu/upisdk/upiintent/c$2;->a:[I

    invoke-virtual {p2}, Lcom/payu/upisdk/PaymentOption;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/16 v3, 0x401

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 2171
    :pswitch_0
    const/4 p1, 0x1

    invoke-virtual {p3, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    goto/16 :goto_0

    .line 2157
    :pswitch_1
    invoke-static {p2}, Lcom/payu/upisdk/util/b;->a(Lcom/payu/upisdk/PaymentOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2159
    new-instance p3, Lcom/payu/upisdk/a/a;

    invoke-direct {p3, p2}, Lcom/payu/upisdk/a/a;-><init>(Lcom/payu/upisdk/PaymentOption;)V

    invoke-virtual {p3}, Lcom/payu/upisdk/a/a;->a()Lcom/payu/upisdk/c/b;

    move-result-object p2

    .line 2160
    sget-object p3, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    move-object v0, p2

    check-cast v0, Lcom/payu/upisdk/c/d;

    .line 4054
    iput-object v0, p3, Lcom/payu/upisdk/b;->c:Lcom/payu/upisdk/c/d;

    .line 2161
    invoke-virtual {p2, p1, p4, p5, p6}, Lcom/payu/upisdk/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    return-void

    .line 2163
    :cond_1
    iget-object p1, v0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    sget p4, Lcom/payu/upisdk/R$string;->payu_samsung_module_is_not_imported:I

    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 2164
    invoke-virtual {p3, v2, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 2166
    return-void

    .line 2147
    :pswitch_2
    invoke-static {p2}, Lcom/payu/upisdk/util/b;->a(Lcom/payu/upisdk/PaymentOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2148
    new-instance p3, Lcom/payu/upisdk/a/a;

    invoke-direct {p3, p2}, Lcom/payu/upisdk/a/a;-><init>(Lcom/payu/upisdk/PaymentOption;)V

    invoke-virtual {p3}, Lcom/payu/upisdk/a/a;->a()Lcom/payu/upisdk/c/b;

    move-result-object p2

    .line 2149
    invoke-virtual {p2, p1, p4, p5, p6}, Lcom/payu/upisdk/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    return-void

    .line 2151
    :cond_2
    iget-object p1, v0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    sget p4, Lcom/payu/upisdk/R$string;->payu_gpay_module_is_not_imported:I

    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 2152
    invoke-virtual {p3, v2, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 2154
    return-void

    .line 2137
    :pswitch_3
    invoke-static {p2}, Lcom/payu/upisdk/util/b;->a(Lcom/payu/upisdk/PaymentOption;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2138
    new-instance p3, Lcom/payu/upisdk/a/a;

    invoke-direct {p3, p2}, Lcom/payu/upisdk/a/a;-><init>(Lcom/payu/upisdk/PaymentOption;)V

    invoke-virtual {p3}, Lcom/payu/upisdk/a/a;->a()Lcom/payu/upisdk/c/b;

    move-result-object p2

    .line 2139
    invoke-virtual {p2, p1, p4, p5, p6}, Lcom/payu/upisdk/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    return-void

    .line 2141
    :cond_3
    iget-object p1, v0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    sget p4, Lcom/payu/upisdk/R$string;->payu_phonepe_module_is_not_imported:I

    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 2142
    invoke-virtual {p3, v2, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 2144
    return-void

    .line 2172
    :goto_0
    return-void

    .line 2175
    :cond_4
    const/16 p2, 0x3fe

    sget p4, Lcom/payu/upisdk/R$string;->please_provide_merchant_key_in_manifest:I

    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 107
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public makePayment(Lcom/payu/upisdk/callbacks/PayUUPICallback;Landroid/app/Activity;Lcom/payu/upisdk/bean/UpiConfig;)V
    .locals 3
    .param p1, "callback"    # Lcom/payu/upisdk/callbacks/PayUUPICallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "upiConfig"    # Lcom/payu/upisdk/bean/UpiConfig;

    .line 32
    new-instance v0, Lcom/payu/upisdk/upiintent/c;

    invoke-direct {v0}, Lcom/payu/upisdk/upiintent/c;-><init>()V

    .line 33
    nop

    .line 1187
    .end local p1    # "callback":Lcom/payu/upisdk/callbacks/PayUUPICallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "upiConfig":Lcom/payu/upisdk/bean/UpiConfig;
    if-eqz p1, :cond_7

    .line 1189
    if-eqz p3, :cond_6

    .line 1191
    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1192
    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2037
    iput-object p3, v1, Lcom/payu/upisdk/b;->d:Lcom/payu/upisdk/bean/UpiConfig;

    .line 1193
    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "bankcode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/payu/upisdk/bean/UpiConfig;->setPaymentType(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPaymentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPaymentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1202
    :cond_0
    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPaymentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPaymentType()Ljava/lang/String;

    move-result-object v2

    .line 2107
    iget-object v1, v1, Lcom/payu/upisdk/b;->f:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1202
    if-eqz v1, :cond_1

    goto :goto_0

    .line 1205
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Forget to call checkForPaymentAvailability for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPaymentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1206
    const/16 p2, 0x3fd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPaymentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    return-void

    .line 1203
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/payu/upisdk/upiintent/c;->a(Lcom/payu/upisdk/callbacks/PayUUPICallback;Landroid/app/Activity;Lcom/payu/upisdk/bean/UpiConfig;)V

    return-void

    .line 1195
    :cond_3
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_4

    .line 1196
    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getGmsProviderUpdatedStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 1197
    const/16 p3, 0x400

    sget v0, Lcom/payu/upisdk/R$string;->please_enabled_gms_provider:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    return-void

    .line 1199
    :cond_4
    invoke-virtual {v0, p1, p2, p3}, Lcom/payu/upisdk/upiintent/c;->a(Lcom/payu/upisdk/callbacks/PayUUPICallback;Landroid/app/Activity;Lcom/payu/upisdk/bean/UpiConfig;)V

    return-void

    .line 1210
    :cond_5
    const/16 p3, 0x3fe

    sget v0, Lcom/payu/upisdk/R$string;->please_provide_merchant_key_in_manifest:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 34
    return-void

    .line 1190
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Merchant info is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1188
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PayUUPICallback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
