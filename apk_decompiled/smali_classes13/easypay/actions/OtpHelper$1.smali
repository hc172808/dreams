.class Leasypay/actions/OtpHelper$1;
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

    .line 70
    iput-object p1, p0, Leasypay/actions/OtpHelper$1;->this$0:Leasypay/actions/OtpHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 77
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 84
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_2

    .line 88
    :try_start_1
    const-string v2, "pdus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 97
    .local v2, "pdus":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 98
    array-length v3, v2

    new-array v3, v3, [Landroid/telephony/SmsMessage;

    move-object v1, v3

    .line 99
    :cond_0
    if-eqz v1, :cond_1

    .line 100
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 101
    aget-object v4, v2, v3

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v1, v3

    .line 102
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "msgFrom":Ljava/lang/String;
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "msgBody":Ljava/lang/String;
    iget-object v6, p0, Leasypay/actions/OtpHelper$1;->this$0:Leasypay/actions/OtpHelper;

    invoke-virtual {v6, v5, v4}, Leasypay/actions/OtpHelper;->checkSms(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .end local v4    # "msgFrom":Ljava/lang/String;
    .end local v5    # "msgBody":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "pdus":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 115
    :catch_0
    move-exception v2

    .line 121
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msgs":[Landroid/telephony/SmsMessage;
    :cond_2
    :goto_1
    goto :goto_2

    .line 120
    :catch_1
    move-exception v0

    .line 122
    :goto_2
    return-void
.end method
