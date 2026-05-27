.class final Lcom/payu/upisdk/UpiWrapper$1;
.super Lcom/payu/upisdk/callbacks/PayUUPICallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/UpiWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/UpiWrapper;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/UpiWrapper;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-direct {p0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V
    .locals 1
    .param p1, "isAvailable"    # Z
    .param p2, "paymentOption"    # Lcom/payu/upisdk/PaymentOption;

    .line 54
    invoke-super {p0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->isPaymentOptionAvailable(ZLcom/payu/upisdk/PaymentOption;)V

    .line 55
    nop

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper$1;
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    .end local p1    # "isAvailable":Z
    .end local p2    # "paymentOption":Lcom/payu/upisdk/PaymentOption;
    invoke-virtual {p2}, Lcom/payu/upisdk/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->isPaymentOptionAvailable(ZLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public final isPaymentOptionAvailable(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isAvailable"    # Z
    .param p2, "paymentType"    # Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isPaymentOptionAvailable upisdk/upiwrapper isAvailable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  PaymentType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 49
    nop

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper$1;
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    .end local p1    # "isAvailable":Z
    .end local p2    # "paymentType":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->isPaymentOptionAvailable(ZLjava/lang/String;)V

    .line 50
    return-void
.end method

.method public final onBackApprove()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onBackApprove()V

    .line 73
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->onBackApprove()V

    .line 74
    return-void
.end method

.method public final onBackButton(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "alertDialogBuilder"    # Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-super {p0, p1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 85
    nop

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper$1;
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    .end local p1    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-interface {v0, p1}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 86
    return-void
.end method

.method public final onBackDismiss()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onBackDismiss()V

    .line 79
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->onBackDismiss()V

    .line 80
    return-void
.end method

.method public final onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "payuResult"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .line 32
    invoke-super {p0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onPaymentFailure  upisdk/upiwrapper payuResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  merchamtResponse  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 34
    nop

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper$1;
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    .end local p1    # "payuResult":Ljava/lang/String;
    .end local p2    # "merchantResponse":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public final onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "payuResult"    # Ljava/lang/String;
    .param p2, "merchantResponse"    # Ljava/lang/String;

    .line 39
    invoke-super {p0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onPaymentSuccess  upisdk/upiwrapper payuResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  merchamtResponse  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 41
    nop

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper$1;
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    .end local p1    # "payuResult":Ljava/lang/String;
    .end local p2    # "merchantResponse":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final onPaymentTerminate()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentTerminate()V

    .line 61
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->onPaymentTerminate()V

    .line 62
    return-void
.end method

.method public final onUpiErrorReceived(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 66
    invoke-super {p0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 67
    nop

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper$1;
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    .end local p1    # "code":I
    .end local p2    # "errorMsg":Ljava/lang/String;
    invoke-interface {v0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onVpaEntered(Ljava/lang/String;Lcom/payu/upisdk/upi/IValidityCheck;)V
    .locals 2
    .param p1, "vpa"    # Ljava/lang/String;
    .param p2, "iValidityCheck"    # Lcom/payu/upisdk/upi/IValidityCheck;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onVpaEntered upisdk/Upiwrapper vpa "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 27
    nop

    .end local p0    # "this":Lcom/payu/upisdk/UpiWrapper$1;
    iget-object v0, p0, Lcom/payu/upisdk/UpiWrapper$1;->a:Lcom/payu/upisdk/UpiWrapper;

    invoke-static {v0}, Lcom/payu/upisdk/UpiWrapper;->a(Lcom/payu/upisdk/UpiWrapper;)Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;

    move-result-object v0

    .end local p1    # "vpa":Ljava/lang/String;
    .end local p2    # "iValidityCheck":Lcom/payu/upisdk/upi/IValidityCheck;
    invoke-interface {v0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallbackInterface;->onVpaEntered(Ljava/lang/String;Lcom/payu/upisdk/upi/IValidityCheck;)V

    .line 28
    return-void
.end method
