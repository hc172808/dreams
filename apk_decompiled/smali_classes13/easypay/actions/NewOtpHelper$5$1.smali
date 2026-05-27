.class Leasypay/actions/NewOtpHelper$5$1;
.super Ljava/lang/Object;
.source "NewOtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NewOtpHelper$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leasypay/actions/NewOtpHelper$5;


# direct methods
.method constructor <init>(Leasypay/actions/NewOtpHelper$5;)V
    .locals 0
    .param p1, "this$1"    # Leasypay/actions/NewOtpHelper$5;

    .line 298
    iput-object p1, p0, Leasypay/actions/NewOtpHelper$5$1;->this$1:Leasypay/actions/NewOtpHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 301
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5$1;->this$1:Leasypay/actions/NewOtpHelper$5;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$500(Leasypay/actions/NewOtpHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$5$1;->this$1:Leasypay/actions/NewOtpHelper$5;

    iget-object v0, v0, Leasypay/actions/NewOtpHelper$5;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$500(Leasypay/actions/NewOtpHelper;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Leasypay/actions/NewOtpHelper$5$1$1;

    invoke-direct {v1, p0}, Leasypay/actions/NewOtpHelper$5$1$1;-><init>(Leasypay/actions/NewOtpHelper$5$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    :cond_0
    return-void
.end method
