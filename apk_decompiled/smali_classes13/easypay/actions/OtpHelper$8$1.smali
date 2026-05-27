.class Leasypay/actions/OtpHelper$8$1;
.super Ljava/lang/Object;
.source "OtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/OtpHelper$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leasypay/actions/OtpHelper$8;


# direct methods
.method constructor <init>(Leasypay/actions/OtpHelper$8;)V
    .locals 0
    .param p1, "this$1"    # Leasypay/actions/OtpHelper$8;

    .line 358
    iput-object p1, p0, Leasypay/actions/OtpHelper$8$1;->this$1:Leasypay/actions/OtpHelper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 361
    iget-object v0, p0, Leasypay/actions/OtpHelper$8$1;->this$1:Leasypay/actions/OtpHelper$8;

    iget-object v0, v0, Leasypay/actions/OtpHelper$8;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Enter OTP"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Leasypay/actions/OtpHelper$8$1;->this$1:Leasypay/actions/OtpHelper$8;

    iget-object v0, v0, Leasypay/actions/OtpHelper$8;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Leasypay/actions/OtpHelper$8$1;->this$1:Leasypay/actions/OtpHelper$8;

    iget-object v0, v0, Leasypay/actions/OtpHelper$8;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$800(Leasypay/actions/OtpHelper;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Message not detected,Enter OTP Manually"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_0
    return-void
.end method
