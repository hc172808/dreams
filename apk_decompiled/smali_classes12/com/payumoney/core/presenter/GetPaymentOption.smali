.class public Lcom/payumoney/core/presenter/GetPaymentOption;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Landroid/content/Context;Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "paymentParam"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
    .param p4, "tag"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    invoke-virtual {p3}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p4}, Lcom/payumoney/core/SdkSession;->createPayment(Ljava/util/HashMap;Lcom/payumoney/core/listener/OnPaymentOptionReceivedListener;Ljava/lang/String;)V

    .line 16
    return-void
.end method
