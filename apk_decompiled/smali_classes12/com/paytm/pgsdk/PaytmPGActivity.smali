.class public Lcom/paytm/pgsdk/PaytmPGActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PaytmPGActivity.java"

# interfaces
.implements Leasypay/listeners/WebClientListener;
.implements Leasypay/listeners/AppCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_UPI_APP:I = 0x69

.field private static final SMS_CONSENT_REQUEST:I = 0x2

.field private static final UI_INITIALIZATION_ERROR_OCCURED:Ljava/lang/String; = "Some error occured while initializing UI of Payment Gateway Activity"

.field private static final mAssistId:I = 0x65

.field private static final mwebVId:I = 0x79


# instance fields
.field private isAssistEnabled:Z

.field private mActivity:Landroid/app/Activity;

.field public volatile mAssistLayout:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDlg:Landroid/app/Dialog;

.field private mId:Ljava/lang/String;

.field private volatile mParams:Landroid/os/Bundle;

.field private mPaytmAssist:Leasypay/manager/PaytmAssist;

.field protected volatile mProgress:Landroid/widget/ProgressBar;

.field private volatile mWV:Lcom/paytm/pgsdk/PaytmWebView;

.field private mbHideHeader:Z

.field private mbSendAllChecksumResponseParametersToPGServer:Z

.field private mwebViewClient:Leasypay/manager/EasypayWebViewClient;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field private orderId:Ljava/lang/String;

.field smsVerificationReceiver:Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 112
    new-instance v0, Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;

    invoke-direct {v0, p0}, Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;-><init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->smsVerificationReceiver:Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;

    return-void
.end method

.method static synthetic access$000(Lcom/paytm/pgsdk/PaytmPGActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 88
    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->cancelTransaction()V

    return-void
.end method

.method static synthetic access$100(Lcom/paytm/pgsdk/PaytmPGActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 88
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/paytm/pgsdk/PaytmPGActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmPGActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/PaytmPGActivity;->parseOneTimeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/paytm/pgsdk/PaytmPGActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmPGActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/PaytmPGActivity;->fillOtpOnWebPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/paytm/pgsdk/PaytmPGActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/paytm/pgsdk/PaytmPGActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 88
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/PaytmPGActivity;->getDataFromSmsBundle(Landroid/content/Intent;)V

    return-void
.end method

.method private declared-synchronized cancelTransaction()V
    .locals 3

    monitor-enter p0

    .line 327
    :try_start_0
    const-string v0, "Displaying Confirmation Dialog"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "DlgBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/paytm/pgsdk/R$style;->CancelDialogeTheme:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 330
    const-string v1, "Cancel Transaction"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 331
    const-string v1, "Are you sure you want to cancel transaction"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    const-string v1, "Yes"

    new-instance v2, Lcom/paytm/pgsdk/PaytmPGActivity$2;

    invoke-direct {v2, p0}, Lcom/paytm/pgsdk/PaytmPGActivity$2;-><init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    const-string v1, "No"

    new-instance v2, Lcom/paytm/pgsdk/PaytmPGActivity$3;

    invoke-direct {v2, p0}, Lcom/paytm/pgsdk/PaytmPGActivity$3;-><init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mDlg:Landroid/app/Dialog;

    .line 349
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 326
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGActivity;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fillOtpOnWebPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "receivedOtp"    # Ljava/lang/String;

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:if(document.getElementById(\'inp\')){document.getElementById(\'inp\').focus();setTimeout(function(){document.getElementById(\'inp\').value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'},0);}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "js":Ljava/lang/String;
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v1, v0}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private getDataFromSmsBundle(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 578
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 580
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 582
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_2

    .line 584
    :try_start_0
    const-string v2, "pdus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 585
    .local v2, "pdus":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 586
    array-length v3, v2

    new-array v3, v3, [Landroid/telephony/SmsMessage;

    move-object v1, v3

    .line 587
    :cond_0
    if-eqz v1, :cond_1

    .line 588
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 589
    aget-object v4, v2, v3

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v1, v3

    .line 590
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 591
    .local v4, "msgFrom":Ljava/lang/String;
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "msgBody":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/paytm/pgsdk/PaytmPGActivity;->parseOneTimeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/paytm/pgsdk/PaytmPGActivity;->fillOtpOnWebPage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v4    # "msgFrom":Ljava/lang/String;
    .end local v5    # "msgBody":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 600
    .end local v2    # "pdus":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 595
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Redirection"

    invoke-virtual {v3, v5, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 599
    const-string v3, "EXCEPTION"

    invoke-static {v3, v2}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private initSmsConsent()V
    .locals 5

    .line 460
    const-string v0, "Redirection"

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->smsVerificationReceiver:Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;

    const-string v3, "com.google.android.gms.auth.api.phone.permission.SEND"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/paytm/pgsdk/PaytmPGActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 463
    invoke-static {p0}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsUserConsent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 466
    .local v2, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    new-instance v3, Lcom/paytm/pgsdk/PaytmPGActivity$4;

    invoke-direct {v3, p0}, Lcom/paytm/pgsdk/PaytmPGActivity$4;-><init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 473
    new-instance v3, Lcom/paytm/pgsdk/PaytmPGActivity$5;

    invoke-direct {v3, p0}, Lcom/paytm/pgsdk/PaytmPGActivity$5;-><init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    nop

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 480
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 481
    .local v1, "ex":Ljava/lang/NoClassDefFoundError;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 488
    .end local v1    # "ex":Ljava/lang/NoClassDefFoundError;
    nop

    .line 489
    :goto_0
    return-void
.end method

.method private declared-synchronized initUI()Z
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    .line 150
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "HIDE_HEADER"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mbHideHeader:Z

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "SEND_ALL_CHECKSUM_RESPONSE_PARAMETERS_TO_PG_SERVER"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mbSendAllChecksumResponseParametersToPGServer:Z

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "mid"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mId:Ljava/lang/String;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "orderId"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->orderId:Ljava/lang/String;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "IS_ENABLE_ASSIST"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->isAssistEnabled:Z

    .line 156
    const-string v0, "Assist Enabled"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 158
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGActivity;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hide Header "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mbHideHeader:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 159
    const-string v0, "Initializing the UI of Transaction Page..."

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 161
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "RootView":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v4, "TopBar":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v5, "TopBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 167
    const-string v8, "#bdbdbd"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 169
    new-instance v8, Landroid/widget/Button;

    const v9, 0x1010049

    const/4 v10, 0x0

    invoke-direct {v8, v1, v10, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    .local v8, "Cancel":Landroid/widget/Button;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v9, "CancelParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xf

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float v11, v11, v12

    float-to-int v11, v11

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 173
    new-instance v11, Lcom/paytm/pgsdk/PaytmPGActivity$1;

    invoke-direct {v11, v1}, Lcom/paytm/pgsdk/PaytmPGActivity$1;-><init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const-string v11, "Cancel"

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v11, "AppName":Landroid/widget/TextView;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v12, "AppNameParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xd

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    const/high16 v14, -0x1000000

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    const-string v14, "Paytm Payments"

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 191
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 193
    new-instance v14, Landroid/widget/RelativeLayout;

    invoke-direct {v14, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 194
    .local v14, "WebLayout":Landroid/widget/RelativeLayout;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    .local v15, "WebLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 196
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v2, Lcom/paytm/pgsdk/PaytmWebView;

    iget-object v3, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mParams:Landroid/os/Bundle;

    invoke-direct {v2, v1, v3}, Lcom/paytm/pgsdk/PaytmWebView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    .line 199
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v2

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mPaytmAssist:Leasypay/manager/PaytmAssist;

    .line 201
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mAssistLayout:Landroid/widget/FrameLayout;

    .line 208
    iget-object v2, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/paytm/pgsdk/PaytmWebView;->setVisibility(I)V

    .line 209
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v2, "WebParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v3, v2}, Lcom/paytm/pgsdk/PaytmWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v3, Landroid/widget/ProgressBar;

    const v6, 0x1010079

    invoke-direct {v3, v1, v10, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 214
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v3, "ProgressParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    iget-object v6, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v6, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v6, "frameParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    iget-object v7, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mAssistLayout:Landroid/widget/FrameLayout;

    const/16 v10, 0x65

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setId(I)V

    .line 224
    iget-object v7, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mAssistLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v7, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v14, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v7, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mAssistLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v14, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-boolean v7, v1, Lcom/paytm/pgsdk/PaytmPGActivity;->mbHideHeader:Z

    if-eqz v7, :cond_1

    .line 234
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 235
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/paytm/pgsdk/PaytmPGActivity;->requestWindowFeature(I)Z

    .line 236
    invoke-virtual {v1, v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->setContentView(Landroid/view/View;)V

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->startAssist()V

    .line 238
    const-string v7, "Initialized UI of Transaction Page."

    invoke-static {v7}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    const/4 v7, 0x1

    return v7

    .line 149
    .end local v0    # "RootView":Landroid/widget/RelativeLayout;
    .end local v2    # "WebParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "ProgressParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "TopBar":Landroid/widget/RelativeLayout;
    .end local v5    # "TopBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "frameParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "Cancel":Landroid/widget/Button;
    .end local v9    # "CancelParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "AppName":Landroid/widget/TextView;
    .end local v12    # "AppNameParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "WebLayout":Landroid/widget/RelativeLayout;
    .end local v15    # "WebLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    const-string v3, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "Some exception occurred while initializing UI."

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 244
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 149
    .end local v0    # "inEx":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private isEasyPayFragmentAdded()Z
    .locals 2

    .line 571
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    return v0

    .line 574
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private parseOneTimeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .line 439
    const-string v0, ""

    .line 440
    .local v0, "mReceivedOtp":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    const-string v1, "\\d{6}"

    .line 442
    .local v1, "regex":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 443
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 444
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 446
    .local v4, "p6":Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 447
    .local v6, "sixDigitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 448
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTP found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    .end local v1    # "regex":Ljava/lang/String;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "p6":Ljava/util/regex/Pattern;
    .end local v6    # "sixDigitMatcher":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 453
    :cond_1
    const-string v1, "Message received is either null or empty"

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    :goto_0
    return-object v0
.end method

.method private setOtpHelperCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Leasypay/actions/EasypayBrowserFragment;

    .line 425
    .local v0, "fragment":Leasypay/actions/EasypayBrowserFragment;
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->getCurrentNewOtpHelper()Leasypay/actions/NewOtpHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 427
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->getCurrentNewOtpHelper()Leasypay/actions/NewOtpHelper;

    move-result-object v2

    invoke-virtual {v1, v2}, Leasypay/manager/PaytmAssist;->registerSMSCallBack(Leasypay/listeners/AppCallbacks;)V

    .line 428
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1, p1}, Leasypay/manager/PaytmAssist;->setAppSMSCallback(Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method private startAssist()V
    .locals 10

    .line 276
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->orderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mPaytmAssist:Leasypay/manager/PaytmAssist;

    iget-boolean v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->isAssistEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->isAssistEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mAssistLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    iget-object v8, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->orderId:Ljava/lang/String;

    iget-object v9, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mId:Ljava/lang/String;

    move-object v2, p0

    move-object v7, p0

    invoke-virtual/range {v1 .. v9}, Leasypay/manager/PaytmAssist;->startConfigAssist(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/webkit/WebView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmWebView;->setWebCLientCallBacks()V

    .line 280
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mPaytmAssist:Leasypay/manager/PaytmAssist;

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->startAssist()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mPaytmAssist:Leasypay/manager/PaytmAssist;

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getWebClientInstance()Leasypay/manager/EasypayWebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mwebViewClient:Leasypay/manager/EasypayWebViewClient;

    .line 284
    if-eqz v0, :cond_1

    .line 285
    const-string v0, "EasyPayWebView Client:mwebViewClient"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mwebViewClient:Leasypay/manager/EasypayWebViewClient;

    invoke-virtual {v0, p0}, Leasypay/manager/EasypayWebViewClient;->addAssistWebClientListener(Leasypay/listeners/WebClientListener;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string v0, "EasyPayWebView Client:mwebViewClient Null"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void
.end method

.method private startReadingSMS()V
    .locals 2

    .line 492
    new-instance v0, Lcom/paytm/pgsdk/PaytmPGActivity$6;

    invoke-direct {v0, p0}, Lcom/paytm/pgsdk/PaytmPGActivity$6;-><init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 523
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 525
    return-void
.end method

.method private declared-synchronized startTransaction()V
    .locals 4

    monitor-enter p0

    .line 297
    :try_start_0
    const-string v0, "Starting the Process..."

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mActivity:Landroid/app/Activity;

    .line 301
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Parameters"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Parameters"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mParams:Landroid/os/Bundle;

    .line 303
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mParams:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 304
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Lcom/paytm/pgsdk/PaytmWebView;->setId(I)V

    .line 306
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paytm/pgsdk/PaytmWebView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmPGService;->mPGURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mParams:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->getURLEncodedStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paytm/pgsdk/PaytmWebView;->postUrl(Ljava/lang/String;[B)V

    .line 308
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/paytm/pgsdk/PaytmWebView;->requestFocus(I)Z

    .line 310
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "prenotificationurl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 317
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/paytm/pgsdk/IntentServicePreNotification;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v2

    iget-object v2, v2, Lcom/paytm/pgsdk/PaytmPGService;->mOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v2}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "prenotificationurl"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 311
    .end local v0    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGActivity;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    .line 312
    .local v0, "paytmPaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    if-eqz v0, :cond_2

    .line 313
    const-string v1, "Transaction failed due to invaild parameters"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionCancel(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v0    # "paytmPaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public OnWcPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 359
    const-string v0, "Pg Activity:OnWcPageFinish"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public OnWcPageStart(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 364
    const-string v0, "Pg Activity:OnWcPageStart"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public OnWcSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "inError"    # Landroid/net/http/SslError;

    .line 369
    const-string v0, "Pg Activity:OnWcSslError"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public WcshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "s"    # Ljava/lang/String;

    .line 380
    return-void
.end method

.method public WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "o"    # Ljava/lang/Object;

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 389
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 390
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 392
    :sswitch_0
    const-string v0, "javascript:window.upiIntent.intentAppClosed("

    .line 393
    .local v0, "callBackJs":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mWV:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v1, v0}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Js for acknowldgement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 396
    goto :goto_1

    .line 398
    .end local v0    # "callBackJs":Ljava/lang/String;
    :sswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 399
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Otp SMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 402
    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->isEasyPayFragmentAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->isAssistLayoutPopped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-direct {p0, v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->setOtpHelperCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-direct {p0, v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->parseOneTimeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "receivedOtp":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/paytm/pgsdk/PaytmPGActivity;->fillOtpOnWebPage(Ljava/lang/String;)V

    .line 410
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "receivedOtp":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 411
    :cond_2
    const-string v0, "Sms-consent cancelled by user"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->isEasyPayFragmentAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Leasypay/actions/EasypayBrowserFragment;

    .line 414
    .local v0, "fragment":Leasypay/actions/EasypayBrowserFragment;
    if-eqz v0, :cond_3

    .line 415
    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->minimizeAssist()V

    .line 421
    .end local v0    # "fragment":Leasypay/actions/EasypayBrowserFragment;
    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->cancelTransaction()V

    .line 355
    return-void
.end method

.method protected declared-synchronized onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inSavedInstanceState"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    if-eqz p1, :cond_1

    .line 121
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    const-string v1, "Please retry with valid parameters"

    invoke-interface {v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onErrorProceed(Ljava/lang/String;)V

    .line 124
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGActivity;
    :cond_0
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->finish()V

    .line 126
    :cond_1
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.READ_SMS"

    .line 127
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->startReadingSMS()V

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->initSmsConsent()V

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->initUI()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iput-object p0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mContext:Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->startTransaction()V

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/paytm/pgsdk/PaytmPGActivity;->finish()V

    .line 137
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    .line 138
    .local v0, "PaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    if-eqz v0, :cond_4

    .line 139
    const-string v1, "Some error occured while initializing UI of Payment Gateway Activity"

    invoke-interface {v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->someUIErrorOccurred(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v0    # "PaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 118
    .end local p1    # "inSavedInstanceState":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDestroy()V
    .locals 4

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->smsVerificationReceiver:Lcom/paytm/pgsdk/PaytmPGActivity$SmsConsentBroadCastReciever;

    invoke-virtual {p0, v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->stopService()V

    .line 261
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity;->mPaytmAssist:Leasypay/manager/PaytmAssist;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->removeAssist()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local p0    # "this":Lcom/paytm/pgsdk/PaytmPGActivity;
    :cond_0
    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "inEx":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Redirection"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paytm/pgsdk/PaytmPGService;->stopService()V

    .line 268
    const-string v1, "Some exception occurred while destroying the PaytmPGActivity."

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 269
    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V

    .line 271
    .end local v0    # "inEx":Ljava/lang/Exception;
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 272
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->destroyInstance()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 258
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected onResume()V
    .locals 0

    .line 252
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 254
    return-void
.end method

.method public smsReceivedCallback(Ljava/lang/String;)V
    .locals 2
    .param p1, "sms"    # Ljava/lang/String;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 385
    return-void
.end method
