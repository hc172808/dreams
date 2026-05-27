.class public Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;
.super Landroid/content/BroadcastReceiver;
.source "PaytmPGActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paytm/pgsdk/PaytmPGActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsConsentBroadCastReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmPGActivity;


# direct methods
.method public constructor <init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 529
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 532
    if-eqz p2, :cond_0

    .line 533
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 535
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 536
    const-string v1, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    .line 537
    .local v1, "smsRetrieverStatus":Lcom/google/android/gms/common/api/Status;
    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 558
    :sswitch_0
    const-string v2, "Receiver failed to start-timed out"

    invoke-static {v2, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    const-string v2, "ConsentApi Receiever Timed-Out"

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :sswitch_1
    const-string v2, "com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 546
    .local v2, "consentIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "~ reciever"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 547
    const-string v3, "Receiver started:"

    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/paytm/pgsdk/PaytmPGActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    .line 549
    :catch_0
    move-exception v3

    .line 550
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Redirection"

    invoke-virtual {v4, v6, v5}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "smsRetrieverStatus":Lcom/google/android/gms/common/api/Status;
    .end local v2    # "consentIntent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/Exception;
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
