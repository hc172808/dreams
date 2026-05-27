.class Leasypay/actions/OtpHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "OtpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leasypay/actions/OtpHelper;
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

    .line 125
    iput-object p1, p0, Leasypay/actions/OtpHelper$2;->this$0:Leasypay/actions/OtpHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 132
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "eventName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "eventName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 136
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "resendOtp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "activateOtpHelper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "approveOtp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "focusOtpField"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 161
    :pswitch_0
    iget-object v2, p0, Leasypay/actions/OtpHelper$2;->this$0:Leasypay/actions/OtpHelper;

    invoke-virtual {v2}, Leasypay/actions/OtpHelper;->resendOtp()V

    .line 162
    iget-object v2, p0, Leasypay/actions/OtpHelper$2;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v2}, Leasypay/actions/OtpHelper;->access$300(Leasypay/actions/OtpHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v2

    const-string v3, "resendOTP"

    iget-object v4, p0, Leasypay/actions/OtpHelper$2;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v4}, Leasypay/actions/OtpHelper;->access$200(Leasypay/actions/OtpHelper;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Leasypay/actions/EasypayBrowserFragment;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :pswitch_1
    iget-object v2, p0, Leasypay/actions/OtpHelper$2;->this$0:Leasypay/actions/OtpHelper;

    invoke-virtual {v2}, Leasypay/actions/OtpHelper;->approveOtp()V

    .line 158
    goto :goto_1

    .line 151
    :pswitch_2
    iget-object v2, p0, Leasypay/actions/OtpHelper$2;->this$0:Leasypay/actions/OtpHelper;

    invoke-virtual {v2}, Leasypay/actions/OtpHelper;->activateOtpHelper()V

    .line 153
    goto :goto_1

    .line 139
    :pswitch_3
    iget-object v2, p0, Leasypay/actions/OtpHelper$2;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v2}, Leasypay/actions/OtpHelper;->access$000(Leasypay/actions/OtpHelper;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Leasypay/actions/OtpHelper$2;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v3}, Leasypay/actions/OtpHelper;->access$100(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_1
    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    .line 169
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x30ada79 -> :sswitch_3
        0x32e6549e -> :sswitch_2
        0x52f88b06 -> :sswitch_1
        0x7852fcf0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
