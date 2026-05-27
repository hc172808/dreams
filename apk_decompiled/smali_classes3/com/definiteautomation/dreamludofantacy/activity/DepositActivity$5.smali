.class Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$5;
.super Ljava/lang/Object;
.source "DepositActivity.java"

# interfaces
.implements Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->startPaytmPayment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clientAuthenticationFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 372
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clientauth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public networkNotAvailable()V
    .locals 2

    .line 362
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network not available "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method public onBackPressedCancelTransaction()V
    .locals 2

    .line 387
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backPress "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public onErrorLoadingWebPage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "s1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "s",
            "s1"
        }
    .end annotation

    .line 382
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " error loading web "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method public onErrorProceed(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 367
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onErrorProcess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method public onTransactionCancel(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "bundle"
        }
    .end annotation

    .line 392
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " transaction cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method public onTransactionResponse(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 344
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response (onTransactionResponse) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, "ORDERID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "orderId":Ljava/lang/String;
    const-string v1, "STATUS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "status":Ljava/lang/String;
    const-string v2, "TXNID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "txnId":Ljava/lang/String;
    const-string v3, "CHECKSUMHASH"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "checksum":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const-string v5, "TXN_SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    iput-object v0, v4, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->orderIdSt:Ljava/lang/String;

    .line 353
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    iput-object v2, v4, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->paymentIdSt:Ljava/lang/String;

    .line 354
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    iput-object v3, v4, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->checksumSt:Ljava/lang/String;

    .line 356
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity$5;->this$0:Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$300(Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;)V

    .line 358
    :cond_0
    return-void
.end method

.method public someUIErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 377
    invoke-static {}, Lcom/definiteautomation/dreamludofantacy/activity/DepositActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " UI error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method
