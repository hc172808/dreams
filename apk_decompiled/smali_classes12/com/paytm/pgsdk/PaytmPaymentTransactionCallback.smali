.class public interface abstract Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
.super Ljava/lang/Object;
.source "PaytmPaymentTransactionCallback.java"


# virtual methods
.method public abstract clientAuthenticationFailed(Ljava/lang/String;)V
.end method

.method public abstract networkNotAvailable()V
.end method

.method public abstract onBackPressedCancelTransaction()V
.end method

.method public abstract onErrorLoadingWebPage(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onErrorProceed(Ljava/lang/String;)V
.end method

.method public abstract onTransactionCancel(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onTransactionResponse(Landroid/os/Bundle;)V
.end method

.method public abstract someUIErrorOccurred(Ljava/lang/String;)V
.end method
