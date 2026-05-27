.class Leasypay/actions/OtpHelper$10;
.super Ljava/lang/Object;
.source "OtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/OtpHelper;->logTempData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/OtpHelper;


# direct methods
.method constructor <init>(Leasypay/actions/OtpHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/OtpHelper;

    .line 640
    iput-object p1, p0, Leasypay/actions/OtpHelper$10;->this$0:Leasypay/actions/OtpHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 644
    :try_start_0
    iget-object v0, p0, Leasypay/actions/OtpHelper$10;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$1100(Leasypay/actions/OtpHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Leasypay/actions/OtpHelper$10;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/OtpHelper$10;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$1100(Leasypay/actions/OtpHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Leasypay/actions/OtpHelper$10;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/OtpHelper$10;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_0
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 652
    :goto_0
    return-void
.end method
