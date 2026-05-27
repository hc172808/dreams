.class Lcom/paytm/pgsdk/PaytmPGActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "PaytmPGActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmPGActivity;->startReadingSMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmPGActivity;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 492
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmPGActivity$6;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 497
    :try_start_0
    const-string v0, "Otp message received"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    if-eqz p2, :cond_1

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const-string v0, ""

    .line 502
    .local v0, "smsBody":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 503
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 504
    .local v4, "smsMessage":Landroid/telephony/SmsMessage;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 505
    const-string v5, "Calling checkSms from broadcast receiver"

    invoke-static {v5, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    iget-object v5, p0, Lcom/paytm/pgsdk/PaytmPGActivity$6;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-static {v5, v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->access$200(Lcom/paytm/pgsdk/PaytmPGActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, "otp":Ljava/lang/String;
    iget-object v6, p0, Lcom/paytm/pgsdk/PaytmPGActivity$6;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-static {v6, v5}, Lcom/paytm/pgsdk/PaytmPGActivity;->access$300(Lcom/paytm/pgsdk/PaytmPGActivity;Ljava/lang/String;)V

    .line 503
    .end local v4    # "smsMessage":Landroid/telephony/SmsMessage;
    .end local v5    # "otp":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmPGActivity$6;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-static {v1, p2}, Lcom/paytm/pgsdk/PaytmPGActivity;->access$400(Lcom/paytm/pgsdk/PaytmPGActivity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v0    # "smsBody":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Redirection"

    invoke-virtual {v1, v3, v2}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 518
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
