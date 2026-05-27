.class Leasypay/actions/EasypayBrowserFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "EasypayBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/EasypayBrowserFragment;->initSmsConsent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/EasypayBrowserFragment;


# direct methods
.method constructor <init>(Leasypay/actions/EasypayBrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 1652
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment$11;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1655
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    const-string v0, "SMS consent:intent received"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1657
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1659
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1660
    :try_start_0
    const-string v1, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    .line 1661
    .local v1, "status":Lcom/google/android/gms/common/api/Status;
    if-eqz v1, :cond_0

    .line 1662
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1677
    :sswitch_0
    const-string v2, "SMS consent:timeout occured"

    invoke-static {v2, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1678
    iget-object v2, p0, Leasypay/actions/EasypayBrowserFragment$11;->this$0:Leasypay/actions/EasypayBrowserFragment;

    sget v3, Lpaytm/assist/easypay/easypay/R$id;->otpHelper:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Leasypay/actions/EasypayBrowserFragment;->toggleView(ILjava/lang/Boolean;)V

    goto :goto_0

    .line 1665
    :sswitch_1
    const-string v2, "com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1669
    .local v2, "consentIntent":Landroid/content/Intent;
    :try_start_1
    const-string v3, "SMS consent:started"

    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1670
    iget-object v3, p0, Leasypay/actions/EasypayBrowserFragment$11;->this$0:Leasypay/actions/EasypayBrowserFragment;

    const/16 v4, 0xb

    invoke-virtual {v3, v2, v4}, Leasypay/actions/EasypayBrowserFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1674
    goto :goto_0

    .line 1671
    :catch_0
    move-exception v3

    .line 1673
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1675
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0

    .line 1684
    .end local v1    # "status":Lcom/google/android/gms/common/api/Status;
    .end local v2    # "consentIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1685
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    nop

    .line 1688
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method
