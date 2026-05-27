.class public Lcom/payu/upisdk/callbacks/PayUUPICallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V
    .locals 0

    .line 25
    return-void
.end method

.method public isPaymentOptionAvailable(ZLjava/lang/String;)V
    .locals 0

    .line 20
    return-void
.end method

.method public onBackApprove()V
    .locals 0

    .line 60
    return-void
.end method

.method public onBackButton(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 55
    return-void
.end method

.method public onBackDismiss()V
    .locals 0

    .line 65
    return-void
.end method

.method public onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    return-void
.end method

.method public onPaymentTerminate()V
    .locals 0

    .line 40
    return-void
.end method

.method public onUpiErrorReceived(ILjava/lang/String;)V
    .locals 0

    .line 50
    return-void
.end method

.method public onVpaEntered(Ljava/lang/String;Lcom/payu/upisdk/upi/IValidityCheck;)V
    .locals 0

    .line 30
    return-void
.end method
