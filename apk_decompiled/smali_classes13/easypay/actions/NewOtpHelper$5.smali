.class Leasypay/actions/NewOtpHelper$5;
.super Ljava/lang/Object;
.source "NewOtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NewOtpHelper;->activateOtpHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/NewOtpHelper;


# direct methods
.method constructor <init>(Leasypay/actions/NewOtpHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/NewOtpHelper;

    .line 289
    iput-object p1, p0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 293
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$300(Leasypay/actions/NewOtpHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$300(Leasypay/actions/NewOtpHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "Activating otphelper"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$300(Leasypay/actions/NewOtpHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v1}, Leasypay/actions/NewOtpHelper;->access$500(Leasypay/actions/NewOtpHelper;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lpaytm/assist/easypay/easypay/R$string;->waiting_for_otp_label:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v6

    invoke-virtual {v6}, Leasypay/manager/PaytmAssist;->geTxnBank()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leasypay/actions/EasypayBrowserFragment;->setDetectionStatusText(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$300(Leasypay/actions/NewOtpHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->otpHelper:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->toggleView(ILjava/lang/Boolean;)V

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 298
    .local v0, "delayHandler":Landroid/os/Handler;
    new-instance v1, Leasypay/actions/NewOtpHelper$5$1;

    invoke-direct {v1, p0}, Leasypay/actions/NewOtpHelper$5$1;-><init>(Leasypay/actions/NewOtpHelper$5;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0    # "delayHandler":Landroid/os/Handler;
    :cond_0
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 319
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
