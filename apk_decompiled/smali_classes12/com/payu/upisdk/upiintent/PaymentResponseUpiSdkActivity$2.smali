.class final Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$2;->a:Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 408
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$2;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getPayUUpiSdkCallback  used when doing through Upi Sdk  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 1081
    iget-object v1, v1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 412
    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 413
    invoke-virtual {v0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onBackApprove()V

    .line 414
    :cond_0
    invoke-static {}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;

    invoke-virtual {v0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->finish()V

    return-void

    .line 415
    :cond_1
    nop

    .end local p2    # "i":I
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 417
    nop

    .end local p1    # "dialogInterface":Landroid/content/DialogInterface;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 4081
    iget-object p1, p1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 418
    invoke-virtual {p1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onBackDismiss()V

    .line 420
    :cond_2
    return-void
.end method
