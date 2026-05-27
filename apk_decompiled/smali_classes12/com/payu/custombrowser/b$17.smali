.class Lcom/payu/custombrowser/b$17;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 801
    return-void

    .line 803
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 804
    iget-object v1, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    .line 805
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 806
    if-eqz v1, :cond_7

    .line 808
    const-string v2, ""

    .line 809
    const/4 v3, 0x0

    .line 810
    const-string v4, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 811
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 812
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 815
    :pswitch_0
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 816
    iget-object v1, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    const-string v2, "otp_received"

    const-string v4, "sms_retriever"

    invoke-virtual {v1, v2, v4}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    move-object v2, v0

    .line 823
    :goto_0
    goto :goto_3

    .line 826
    :cond_1
    const-string v4, "pdus"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 827
    if-eqz v1, :cond_3

    .line 828
    array-length v4, v1

    new-array v6, v4, [Landroid/telephony/SmsMessage;

    .line 829
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_3

    .line 830
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v3, v8, :cond_2

    .line 831
    const-string v3, "format"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 832
    aget-object v8, v1, v7

    check-cast v8, [B

    invoke-static {v8, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    aput-object v3, v6, v7

    .line 833
    goto :goto_2

    .line 834
    :cond_2
    aget-object v3, v1, v7

    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    aput-object v3, v6, v7

    .line 837
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v6, v7

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 838
    aget-object v3, v6, v7

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 829
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 844
    :cond_3
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 845
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v1, v0, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/payu/custombrowser/util/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    .line 848
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_5

    .line 850
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/b;->fillOTPOnBankPage()V

    .line 851
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v1, v0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    iput-object v1, v0, Lcom/payu/custombrowser/b;->otp:Ljava/lang/String;

    .line 852
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v1, v0, Lcom/payu/custombrowser/b;->otp:Ljava/lang/String;

    iput-object v1, v0, Lcom/payu/custombrowser/b;->backupOfOTP:Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/payu/custombrowser/b;->otpTriggered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 855
    :try_start_1
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iput-boolean v5, v0, Lcom/payu/custombrowser/b;->isOTPFilled:Z

    .line 856
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-boolean v0, v0, Lcom/payu/custombrowser/b;->catchAllJSEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->otp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 857
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 858
    const-string v2, "otp"

    iget-object v3, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->otp:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    const-string v2, "isAutoFillOTP"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 860
    iget-object v1, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v1, v1, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_fill_otp:I

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 864
    :cond_4
    goto :goto_4

    .line 862
    :catch_0
    move-exception v0

    .line 863
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 865
    :goto_4
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v0, p0}, Lcom/payu/custombrowser/b;->fillOTP(Landroid/content/BroadcastReceiver;)V

    goto :goto_5

    .line 867
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-boolean v0, v0, Lcom/payu/custombrowser/b;->R:Z

    if-eqz v0, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 868
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    invoke-static {v0, v3, v2}, Lcom/payu/custombrowser/b;->a(Lcom/payu/custombrowser/b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/payu/custombrowser/b;->Q:Z

    .line 869
    :cond_6
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    iget-boolean v0, v0, Lcom/payu/custombrowser/b;->Q:Z

    if-eqz v0, :cond_7

    .line 870
    iget-object v0, p0, Lcom/payu/custombrowser/b$17;->a:Lcom/payu/custombrowser/b;

    sget-object v1, Lcom/payu/custombrowser/util/a;->b:Ljava/lang/String;

    sget-object v2, Lcom/payu/custombrowser/util/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 879
    :cond_7
    :goto_5
    goto :goto_6

    .line 877
    :catch_1
    move-exception v0

    .line 878
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 880
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
