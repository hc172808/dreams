.class Leasypay/actions/NewOtpHelper$5$1$1;
.super Ljava/lang/Object;
.source "NewOtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NewOtpHelper$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Leasypay/actions/NewOtpHelper$5$1;


# direct methods
.method constructor <init>(Leasypay/actions/NewOtpHelper$5$1;)V
    .locals 0
    .param p1, "this$2"    # Leasypay/actions/NewOtpHelper$5$1;

    .line 302
    iput-object p1, p0, Leasypay/actions/NewOtpHelper$5$1$1;->this$2:Leasypay/actions/NewOtpHelper$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 305
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5$1$1;->this$2:Leasypay/actions/NewOtpHelper$5$1;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5$1;->this$1:Leasypay/actions/NewOtpHelper$5;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$500(Leasypay/actions/NewOtpHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "About to fire OTP not detcted "

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5$1$1;->this$2:Leasypay/actions/NewOtpHelper$5$1;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5$1;->this$1:Leasypay/actions/NewOtpHelper$5;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$500(Leasypay/actions/NewOtpHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5$1$1;->this$2:Leasypay/actions/NewOtpHelper$5$1;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5$1;->this$1:Leasypay/actions/NewOtpHelper$5;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$300(Leasypay/actions/NewOtpHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5$1$1;->this$2:Leasypay/actions/NewOtpHelper$5$1;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5$1;->this$1:Leasypay/actions/NewOtpHelper$5;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$000(Leasypay/actions/NewOtpHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const-string v0, "OTP not detcted "

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5$1$1;->this$2:Leasypay/actions/NewOtpHelper$5$1;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5$1;->this$1:Leasypay/actions/NewOtpHelper$5;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$900(Leasypay/actions/NewOtpHelper;)V

    .line 312
    :cond_0
    return-void
.end method
