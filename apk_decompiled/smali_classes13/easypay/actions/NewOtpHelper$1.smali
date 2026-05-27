.class Leasypay/actions/NewOtpHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "NewOtpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leasypay/actions/NewOtpHelper;
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

    .line 77
    iput-object p1, p0, Leasypay/actions/NewOtpHelper$1;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    :try_start_0
    const-string v0, "Otp message received"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    if-eqz p2, :cond_2

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$1;->this$0:Leasypay/actions/NewOtpHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leasypay/actions/NewOtpHelper;->access$002(Leasypay/actions/NewOtpHelper;Z)Z

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const-string v0, ""

    .line 90
    .local v0, "smsBody":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 91
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 92
    .local v4, "smsMessage":Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "smsSender":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 94
    const-string v6, "Calling checkSms from broadcast receiver"

    invoke-static {v6, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v6, p0, Leasypay/actions/NewOtpHelper$1;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v6, v0, v5}, Leasypay/actions/NewOtpHelper;->access$100(Leasypay/actions/NewOtpHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v4    # "smsMessage":Landroid/telephony/SmsMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v5    # "smsSender":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Leasypay/actions/NewOtpHelper$1;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v1, p2}, Leasypay/actions/NewOtpHelper;->access$200(Leasypay/actions/NewOtpHelper;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "smsBody":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
