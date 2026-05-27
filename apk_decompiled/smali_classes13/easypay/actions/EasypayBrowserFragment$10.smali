.class Leasypay/actions/EasypayBrowserFragment$10;
.super Landroid/os/CountDownTimer;
.source "EasypayBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/EasypayBrowserFragment;->setOtpDetectedTimer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/EasypayBrowserFragment;

.field final synthetic val$timerText:Ljava/lang/String;


# direct methods
.method constructor <init>(Leasypay/actions/EasypayBrowserFragment;JJLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/EasypayBrowserFragment;
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .line 1541
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    iput-object p6, p0, Leasypay/actions/EasypayBrowserFragment$10;->val$timerText:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1558
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$2000(Leasypay/actions/EasypayBrowserFragment;)V

    .line 1560
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$800(Leasypay/actions/EasypayBrowserFragment;)Leasypay/actions/GAEventManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$800(Leasypay/actions/EasypayBrowserFragment;)Leasypay/actions/GAEventManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->isAutoSubmit(Z)V

    .line 1562
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$800(Leasypay/actions/EasypayBrowserFragment;)Leasypay/actions/GAEventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->onOTPManuallyEntered(Z)V

    .line 1563
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$800(Leasypay/actions/EasypayBrowserFragment;)Leasypay/actions/GAEventManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Leasypay/actions/GAEventManager;->isSubmitButtonClicked(ZI)V

    .line 1564
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$800(Leasypay/actions/EasypayBrowserFragment;)Leasypay/actions/GAEventManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->isPauseButtonTapped(Z)V

    .line 1568
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .param p1, "millisUntilFinished"    # J

    .line 1544
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1546
    .local v0, "sec":J
    const-string v2, " "

    const-wide/16 v3, 0x1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 1547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment$10;->val$timerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "time":Ljava/lang/String;
    goto :goto_0

    .line 1548
    .end local v2    # "time":Ljava/lang/String;
    :cond_0
    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    .line 1549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leasypay/actions/EasypayBrowserFragment$10;->val$timerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " second"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "time":Ljava/lang/String;
    goto :goto_0

    .line 1551
    .end local v2    # "time":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Leasypay/actions/EasypayBrowserFragment$10;->onFinish()V

    .line 1552
    const-string v2, ""

    .line 1554
    .restart local v2    # "time":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment$10;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v3}, Leasypay/actions/EasypayBrowserFragment;->access$1800(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    return-void
.end method
