.class public interface abstract Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V
.end method

.method public abstract isPaymentOptionAvailable(ZLjava/lang/String;)V
.end method

.method public abstract onBackApprove()V
.end method

.method public abstract onBackButton(Landroid/app/AlertDialog$Builder;)V
.end method

.method public abstract onBackDismiss()V
.end method

.method public abstract onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPaymentTerminate()V
.end method

.method public abstract onUpiErrorReceived(ILjava/lang/String;)V
.end method

.method public abstract onVpaEntered(Ljava/lang/String;Lcom/payu/upisdk/upi/IValidityCheck;)V
.end method
