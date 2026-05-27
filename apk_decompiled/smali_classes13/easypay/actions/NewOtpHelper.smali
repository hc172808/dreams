.class public Leasypay/actions/NewOtpHelper;
.super Ljava/lang/Object;
.source "NewOtpHelper.java"

# interfaces
.implements Leasypay/listeners/WebClientListener;
.implements Leasypay/listeners/JavaScriptCallBacks;
.implements Landroid/text/TextWatcher;
.implements Leasypay/listeners/AppCallbacks;


# instance fields
.field private activity:Landroid/app/Activity;

.field private count:I

.field private fillerFromCodeOperation:Leasypay/entity/Operation;

.field private fragment:Leasypay/actions/EasypayBrowserFragment;

.field private hasSmsBroadReceived:Z

.field private isOtpDetected:Z

.field private isOtpSubmitted:Z

.field private isOtpViaWeb:Z

.field private mAnalyticsManager:Leasypay/actions/GAEventManager;

.field private mIsAutoSubmitDisable:Z

.field private mReceivedOtp:Ljava/lang/String;

.field private mWebViewClient:Leasypay/manager/EasypayWebViewClient;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field private opMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Leasypay/entity/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Leasypay/manager/EasypayWebViewClient;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "frag"    # Leasypay/actions/EasypayBrowserFragment;
    .param p4, "webViewClient"    # Leasypay/manager/EasypayWebViewClient;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leasypay/actions/NewOtpHelper;->opMap:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Leasypay/actions/NewOtpHelper;->count:I

    .line 77
    new-instance v1, Leasypay/actions/NewOtpHelper$1;

    invoke-direct {v1, p0}, Leasypay/actions/NewOtpHelper$1;-><init>(Leasypay/actions/NewOtpHelper;)V

    iput-object v1, p0, Leasypay/actions/NewOtpHelper;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-boolean v0, p0, Leasypay/actions/NewOtpHelper;->isOtpViaWeb:Z

    .line 117
    if-eqz p1, :cond_1

    .line 119
    :try_start_0
    iput-object p1, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    .line 120
    iput-object p3, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 121
    iput-object p2, p0, Leasypay/actions/NewOtpHelper;->webview:Landroid/webkit/WebView;

    .line 122
    if-nez p4, :cond_0

    .line 123
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getWebClientInstance()Leasypay/manager/EasypayWebViewClient;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/NewOtpHelper;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    goto :goto_0

    .line 125
    :cond_0
    iput-object p4, p0, Leasypay/actions/NewOtpHelper;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    .line 127
    :goto_0
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getEasyPayHelper()Leasypay/manager/EasyPayHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Leasypay/manager/EasyPayHelper;->addJsCallListener(Leasypay/listeners/JavaScriptCallBacks;)V

    .line 128
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmAnalyticsManager()Leasypay/actions/GAEventManager;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    .line 129
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0, p0}, Leasypay/manager/PaytmAssist;->registerSMSCallBack(Leasypay/listeners/AppCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->mWebViewClient:Leasypay/manager/EasypayWebViewClient;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0, p0}, Leasypay/manager/EasypayWebViewClient;->addAssistWebClientListener(Leasypay/listeners/WebClientListener;)V

    .line 139
    :cond_1
    return-void
.end method

.method static synthetic access$000(Leasypay/actions/NewOtpHelper;)Z
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    iget-boolean v0, p0, Leasypay/actions/NewOtpHelper;->hasSmsBroadReceived:Z

    return v0
.end method

.method static synthetic access$002(Leasypay/actions/NewOtpHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Leasypay/actions/NewOtpHelper;->hasSmsBroadReceived:Z

    return p1
.end method

.method static synthetic access$100(Leasypay/actions/NewOtpHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1, p2}, Leasypay/actions/NewOtpHelper;->checkSms(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Leasypay/actions/NewOtpHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Leasypay/actions/NewOtpHelper;->isOtpDetected:Z

    return p1
.end method

.method static synthetic access$1100(Leasypay/actions/NewOtpHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->mReceivedOtp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Leasypay/actions/NewOtpHelper;)Leasypay/actions/GAEventManager;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    return-object v0
.end method

.method static synthetic access$1300(Leasypay/actions/NewOtpHelper;)Z
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    iget-boolean v0, p0, Leasypay/actions/NewOtpHelper;->mIsAutoSubmitDisable:Z

    return v0
.end method

.method static synthetic access$200(Leasypay/actions/NewOtpHelper;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 64
    invoke-direct {p0, p1}, Leasypay/actions/NewOtpHelper;->getDataFromSmsBundle(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Leasypay/actions/NewOtpHelper;)Leasypay/actions/EasypayBrowserFragment;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    return-object v0
.end method

.method static synthetic access$400(Leasypay/actions/NewOtpHelper;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    invoke-direct {p0}, Leasypay/actions/NewOtpHelper;->activateOtpHelper()V

    return-void
.end method

.method static synthetic access$500(Leasypay/actions/NewOtpHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Leasypay/actions/NewOtpHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->opMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Leasypay/actions/NewOtpHelper;)Z
    .locals 1
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    iget-boolean v0, p0, Leasypay/actions/NewOtpHelper;->isOtpSubmitted:Z

    return v0
.end method

.method static synthetic access$800(Leasypay/actions/NewOtpHelper;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 64
    invoke-direct {p0, p1}, Leasypay/actions/NewOtpHelper;->checkSMSAlreadyExist(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$900(Leasypay/actions/NewOtpHelper;)V
    .locals 0
    .param p0, "x0"    # Leasypay/actions/NewOtpHelper;

    .line 64
    invoke-direct {p0}, Leasypay/actions/NewOtpHelper;->fireOtpNotDetectedAction()V

    return-void
.end method

.method private activateOtpHelper()V
    .locals 2

    .line 288
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 289
    new-instance v1, Leasypay/actions/NewOtpHelper$5;

    invoke-direct {v1, p0}, Leasypay/actions/NewOtpHelper$5;-><init>(Leasypay/actions/NewOtpHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_0
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private checkSMSAlreadyExist(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .line 495
    if-eqz p1, :cond_4

    .line 499
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 502
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x13

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v2, :cond_0

    .line 503
    :try_start_1
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v6, "date>=?"

    new-array v5, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v8, Leasypay/manager/EasypayWebViewClient;->smsTrackingTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v7, 0x0

    move-object v3, v6

    move-object v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 505
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "date>=?"

    new-array v5, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v8, Leasypay/manager/EasypayWebViewClient;->smsTrackingTime:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 507
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_1

    .line 509
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    const-string v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 511
    .local v2, "indexBody":I
    const-string v3, "address"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 512
    .local v3, "indexAddress":I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, "body":Ljava/lang/String;
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "address":Ljava/lang/String;
    invoke-direct {p0, v4, v5}, Leasypay/actions/NewOtpHelper;->checkSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .end local v2    # "indexBody":I
    .end local v3    # "indexAddress":I
    .end local v4    # "body":Ljava/lang/String;
    .end local v5    # "address":Ljava/lang/String;
    goto :goto_1

    .line 517
    :cond_1
    const-string v2, "cursor is null"

    invoke-static {v2, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    :cond_2
    if-eqz v1, :cond_3

    .line 520
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 522
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 524
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :goto_2
    goto :goto_3

    .line 527
    :cond_4
    const-string v0, "activity is null"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    :goto_3
    return-void
.end method

.method private checkSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "msgFrom"    # Ljava/lang/String;

    .line 443
    iget v0, p0, Leasypay/actions/NewOtpHelper;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Leasypay/actions/NewOtpHelper;->count:I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check sms called: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Leasypay/actions/NewOtpHelper;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n From:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    const-string v0, "\\d{6}"

    .line 447
    .local v0, "regex":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 448
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 449
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 450
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 451
    .local v4, "p6":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 452
    .local v6, "sixDigitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 453
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Leasypay/actions/NewOtpHelper;->mReceivedOtp:Ljava/lang/String;

    .line 454
    iget-boolean v7, p0, Leasypay/actions/NewOtpHelper;->isOtpViaWeb:Z

    if-eqz v7, :cond_0

    .line 455
    invoke-direct {p0, v5}, Leasypay/actions/NewOtpHelper;->fillOtpViaWeb(Ljava/lang/String;)V

    .line 457
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTP found: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Leasypay/actions/NewOtpHelper;->mReceivedOtp:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    iput-boolean v1, p0, Leasypay/actions/NewOtpHelper;->hasSmsBroadReceived:Z

    .line 461
    iget-object v5, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v5, :cond_1

    .line 462
    invoke-virtual {v5, v1}, Leasypay/actions/GAEventManager;->onReadOTPByPaytmAssist(Z)V

    .line 463
    iget-object v5, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v5, v1}, Leasypay/actions/GAEventManager;->onsmsDetected(Z)V

    .line 465
    :cond_1
    invoke-direct {p0}, Leasypay/actions/NewOtpHelper;->fillOtpOnAssist()V

    goto :goto_0

    .line 467
    :cond_2
    invoke-direct {p0}, Leasypay/actions/NewOtpHelper;->fireOtpNotDetectedAction()V

    .line 469
    .end local v4    # "p6":Ljava/util/regex/Pattern;
    .end local v6    # "sixDigitMatcher":Ljava/util/regex/Matcher;
    :goto_0
    goto :goto_1

    .line 471
    :cond_3
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v1, :cond_4

    .line 472
    invoke-virtual {v1, v5}, Leasypay/actions/GAEventManager;->onReadOTPByPaytmAssist(Z)V

    .line 475
    :cond_4
    :goto_1
    return-void
.end method

.method private fillOtpOnAssist()V
    .locals 2

    .line 395
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After Sms :fill otp on assist:isAssistVisible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-boolean v1, v1, Leasypay/actions/EasypayBrowserFragment;->isAssistVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-boolean v0, v0, Leasypay/actions/EasypayBrowserFragment;->isAssistVisible:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    new-instance v1, Leasypay/actions/NewOtpHelper$7;

    invoke-direct {v1, p0}, Leasypay/actions/NewOtpHelper$7;-><init>(Leasypay/actions/NewOtpHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_1

    .line 422
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->isAutoFillSuccess(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_1
    :goto_0
    goto :goto_1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private fillOtpOnWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "jsField"    # Ljava/lang/String;
    .param p2, "customJs"    # Ljava/lang/String;
    .param p3, "valueToReplace"    # Ljava/lang/String;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filler from Code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "filler":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->webview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method private fillOtpViaWeb(Ljava/lang/String;)V
    .locals 5
    .param p1, "mReceivedOtp"    # Ljava/lang/String;

    .line 478
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v0, v0, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v0, v0, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    invoke-virtual {v0}, Leasypay/widget/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v0, v0, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    invoke-virtual {v0}, Leasypay/widget/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leasypay/entity/Operation;

    .line 480
    .local v0, "operation":Leasypay/entity/Operation;
    const/4 v2, 0x0

    .line 482
    .local v2, "metaDataObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Leasypay/entity/Operation;->getActionMetadata()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 486
    goto :goto_1

    .line 483
    :catch_0
    move-exception v3

    .line 484
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 485
    const-string v4, "EXCEPTION"

    invoke-static {v4, v3}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-class v4, Leasypay/entity/AssistMetaData;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/entity/AssistMetaData;

    .line 488
    .local v1, "metaData":Leasypay/entity/AssistMetaData;
    invoke-virtual {v1}, Leasypay/entity/AssistMetaData;->getJsField()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "jsField":Ljava/lang/String;
    invoke-virtual {v0}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1}, Leasypay/actions/NewOtpHelper;->fillOtpOnWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .end local v0    # "operation":Leasypay/entity/Operation;
    .end local v1    # "metaData":Leasypay/entity/AssistMetaData;
    .end local v2    # "metaDataObj":Lorg/json/JSONObject;
    .end local v3    # "jsField":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private fireOtpNotDetectedAction()V
    .locals 3

    .line 271
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    sget v2, Lpaytm/assist/easypay/easypay/R$string;->otp_could_not_detcted:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leasypay/actions/EasypayBrowserFragment;->setDetectionStatusText(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_0

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->onsmsDetected(Z)V

    .line 276
    :cond_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->otpSubmitButtonState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_1
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getDataFromSmsBundle(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 146
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_2

    .line 148
    :try_start_0
    const-string v2, "pdus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 149
    .local v2, "pdus":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 150
    array-length v3, v2

    new-array v3, v3, [Landroid/telephony/SmsMessage;

    move-object v1, v3

    .line 151
    :cond_0
    if-eqz v1, :cond_1

    .line 152
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 153
    aget-object v4, v2, v3

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v1, v3

    .line 154
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "msgFrom":Ljava/lang/String;
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "msgBody":Ljava/lang/String;
    invoke-direct {p0, v5, v4}, Leasypay/actions/NewOtpHelper;->checkSms(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v4    # "msgFrom":Ljava/lang/String;
    .end local v5    # "msgBody":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "pdus":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    const-string v3, "EXCEPTION"

    invoke-static {v3, v2}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private hasReadSmsPermission()Z
    .locals 2

    .line 570
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    .line 572
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 570
    :goto_0
    return v0
.end method

.method private requestReadAndSendSmsPermission()V
    .locals 3

    .line 579
    const-string v0, "android.permission.READ_SMS"

    :try_start_0
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    const-string v2, "android.permission.RECEIVE_SMS"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x66

    invoke-static {v1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 588
    :goto_0
    return-void
.end method

.method private setTextWatcher(Leasypay/entity/Operation;)V
    .locals 2
    .param p1, "operation"    # Leasypay/entity/Operation;

    .line 335
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iput-object p1, p0, Leasypay/actions/NewOtpHelper;->fillerFromCodeOperation:Leasypay/entity/Operation;

    .line 337
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v0, v0, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "Text Watcher"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v0, v0, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    invoke-virtual {v0, p0}, Leasypay/widget/OtpEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 340
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v0, v0, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    invoke-virtual {v0, p1}, Leasypay/widget/OtpEditText;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_0
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private showLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;

    .line 174
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Leasypay/actions/NewOtpHelper$2;

    invoke-direct {v1, p0, p1}, Leasypay/actions/NewOtpHelper$2;-><init>(Leasypay/actions/NewOtpHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private smsBroadCastRegistered()V
    .locals 3

    .line 433
    invoke-direct {p0}, Leasypay/actions/NewOtpHelper;->hasReadSmsPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0}, Leasypay/actions/NewOtpHelper;->requestReadAndSendSmsPermission()V

    .line 436
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Leasypay/actions/NewOtpHelper;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 438
    return-void
.end method

.method private successEvent(I)V
    .locals 2
    .param p1, "id"    # I

    .line 195
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    new-instance v1, Leasypay/actions/NewOtpHelper$3;

    invoke-direct {v1, p0, p1}, Leasypay/actions/NewOtpHelper$3;-><init>(Leasypay/actions/NewOtpHelper;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method


# virtual methods
.method public OnWcPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 534
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    new-instance v1, Leasypay/actions/NewOtpHelper$8;

    invoke-direct {v1, p0}, Leasypay/actions/NewOtpHelper$8;-><init>(Leasypay/actions/NewOtpHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public OnWcPageStart(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 550
    return-void
.end method

.method public OnWcSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "inError"    # Landroid/net/http/SslError;

    .line 555
    return-void
.end method

.method public WcshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 565
    return-void
.end method

.method public WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Ljava/lang/Object;

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "editable"    # Landroid/text/Editable;

    .line 664
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fillerFromCodeOperation:Leasypay/entity/Operation;

    if-eqz v0, :cond_7

    .line 668
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text Change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 672
    .local v1, "state":Z
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 673
    :try_start_1
    iget-boolean v3, p0, Leasypay/actions/NewOtpHelper;->isOtpDetected:Z

    if-nez v3, :cond_1

    .line 674
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v3, :cond_1

    .line 675
    invoke-virtual {v3, v4}, Leasypay/actions/GAEventManager;->onOTPManuallyEntered(Z)V

    .line 678
    :cond_1
    iget-boolean v3, p0, Leasypay/actions/NewOtpHelper;->isOtpDetected:Z

    if-eqz v3, :cond_2

    .line 679
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v3, v3, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    if-eqz v3, :cond_2

    .line 680
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v3, v3, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    invoke-virtual {v3, v2, v4}, Leasypay/widget/OtpEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 684
    :cond_2
    iget-boolean v3, p0, Leasypay/actions/NewOtpHelper;->isOtpDetected:Z

    if-nez v3, :cond_4

    .line 685
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v3, :cond_4

    .line 686
    invoke-virtual {v3, v4}, Leasypay/actions/GAEventManager;->onOTPManuallyEntered(Z)V

    goto :goto_1

    .line 694
    :cond_3
    iget-object v4, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v4, v4, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    if-eqz v4, :cond_4

    .line 695
    iget-object v4, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v4, v4, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    invoke-virtual {v4, v2, v3}, Leasypay/widget/OtpEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 700
    :cond_4
    :goto_1
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v3, v3, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    if-eqz v3, :cond_6

    .line 701
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-object v3, v3, Leasypay/actions/EasypayBrowserFragment;->mInputPassCode:Leasypay/widget/OtpEditText;

    invoke-virtual {v3}, Leasypay/widget/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leasypay/entity/Operation;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 702
    .local v3, "operation":Leasypay/entity/Operation;
    const/4 v4, 0x0

    .line 704
    .local v4, "metaDataObj":Lorg/json/JSONObject;
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v3}, Leasypay/entity/Operation;->getActionMetadata()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 707
    goto :goto_2

    .line 705
    :catch_0
    move-exception v5

    .line 706
    .local v5, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 708
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_2
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-class v6, Leasypay/entity/AssistMetaData;

    invoke-virtual {v5, v2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leasypay/entity/AssistMetaData;

    .line 709
    .local v2, "metaData":Leasypay/entity/AssistMetaData;
    invoke-virtual {v2}, Leasypay/entity/AssistMetaData;->getJsField()Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, "jsField":Ljava/lang/String;
    invoke-virtual {v3}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v0}, Leasypay/actions/NewOtpHelper;->fillOtpOnWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 715
    .end local v2    # "metaData":Leasypay/entity/AssistMetaData;
    .end local v3    # "operation":Leasypay/entity/Operation;
    .end local v4    # "metaDataObj":Lorg/json/JSONObject;
    .end local v5    # "jsField":Ljava/lang/String;
    :cond_6
    goto :goto_3

    .line 713
    :catch_1
    move-exception v2

    .line 714
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 719
    .end local v0    # "input":Ljava/lang/String;
    .end local v1    # "state":Z
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_3
    goto :goto_4

    .line 717
    :catch_2
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 722
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 654
    return-void
.end method

.method doAction(Ljava/lang/String;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->opMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leasypay/entity/Operation;

    .line 229
    .local v0, "operation":Leasypay/entity/Operation;
    if-nez v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    invoke-virtual {v0}, Leasypay/entity/Operation;->getActionMetadata()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "metaDataJson":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    return-void

    .line 236
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v3, "RESEND_BUTTON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "FILLER_FROM_WEB"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v3, "FILLER_FROM_CODE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "READ_OTP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_4
    const-string v3, "SUBMIT_BTN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 247
    :pswitch_0
    const-string v2, "New otphelper:FILLER_FROM_WEB"

    invoke-static {v2, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v0}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "customJs":Ljava/lang/String;
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->webview:Landroid/webkit/WebView;

    if-eqz v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 250
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3

    .line 251
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->webview:Landroid/webkit/WebView;

    new-instance v4, Leasypay/actions/NewOtpHelper$4;

    invoke-direct {v4, p0}, Leasypay/actions/NewOtpHelper$4;-><init>(Leasypay/actions/NewOtpHelper;)V

    invoke-virtual {v3, v2, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 258
    :cond_3
    iget-object v3, p0, Leasypay/actions/NewOtpHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    .end local v2    # "customJs":Ljava/lang/String;
    :pswitch_1
    goto :goto_1

    .line 238
    :pswitch_2
    iget-object v2, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Leasypay/actions/NewOtpHelper;->checkSMSAlreadyExist(Landroid/app/Activity;)V

    .line 239
    nop

    .line 266
    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5ecc666b -> :sswitch_4
        -0x4fc071e -> :sswitch_3
        0x42381953 -> :sswitch_2
        0x5cf9d70e -> :sswitch_1
        0x7259efb6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public helperCallBack(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "uiID"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;
    .param p3, "eventCode"    # I

    .line 634
    const/16 v0, 0x12c

    if-ne p3, v0, :cond_0

    .line 635
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Leasypay/actions/NewOtpHelper;->mIsAutoSubmitDisable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 640
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 641
    :goto_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 659
    return-void
.end method

.method passwordInputDataChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 644
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iput-object p1, p0, Leasypay/actions/NewOtpHelper;->mReceivedOtp:Ljava/lang/String;

    .line 648
    :cond_0
    return-void
.end method

.method public setMap(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Leasypay/entity/Operation;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "oprMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Leasypay/entity/Operation;>;"
    iput-object p1, p0, Leasypay/actions/NewOtpHelper;->opMap:Ljava/util/HashMap;

    .line 168
    invoke-direct {p0}, Leasypay/actions/NewOtpHelper;->smsBroadCastRegistered()V

    .line 169
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->opMap:Ljava/util/HashMap;

    const-string v1, "FILLER_FROM_CODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leasypay/entity/Operation;

    invoke-direct {p0, v0}, Leasypay/actions/NewOtpHelper;->setTextWatcher(Leasypay/entity/Operation;)V

    .line 170
    return-void
.end method

.method public smsReceivedCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "sms"    # Ljava/lang/String;

    .line 726
    const-string v0, "na"

    invoke-direct {p0, p1, v0}, Leasypay/actions/NewOtpHelper;->checkSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method submitOTP(Leasypay/entity/Operation;)V
    .locals 4
    .param p1, "operation"    # Leasypay/entity/Operation;

    .line 351
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->isFragmentPaused()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    iget-boolean v0, v0, Leasypay/actions/EasypayBrowserFragment;->isHideAssistClicked:Z

    if-nez v0, :cond_4

    .line 353
    if-nez p1, :cond_1

    .line 354
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_0

    .line 355
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->onSubmitOtpPaytmAssist(Z)V

    .line 357
    :cond_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p1}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "javascript":Ljava/lang/String;
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 361
    invoke-virtual {v1, v2}, Leasypay/actions/GAEventManager;->onSubmitOtpPaytmAssist(Z)V

    .line 363
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_3

    .line 364
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->webview:Landroid/webkit/WebView;

    new-instance v3, Leasypay/actions/NewOtpHelper$6;

    invoke-direct {v3, p0}, Leasypay/actions/NewOtpHelper$6;-><init>(Leasypay/actions/NewOtpHelper;)V

    invoke-virtual {v1, v0, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 372
    :cond_3
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 375
    :goto_0
    iput-boolean v2, p0, Leasypay/actions/NewOtpHelper;->isOtpSubmitted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v0    # "javascript":Ljava/lang/String;
    goto :goto_1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-void
.end method

.method public uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "uiID"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "eventCode"    # I

    .line 594
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 609
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->maximizeAssist()V

    goto :goto_0

    .line 604
    :sswitch_1
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->minimizeAssist()V

    goto :goto_0

    .line 623
    :sswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Leasypay/actions/NewOtpHelper;->isOtpViaWeb:Z

    goto :goto_0

    .line 618
    :sswitch_3
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->clearOtpFields()V

    goto :goto_0

    .line 602
    :sswitch_4
    goto :goto_0

    .line 599
    :sswitch_5
    invoke-direct {p0, p2}, Leasypay/actions/NewOtpHelper;->showLog(Ljava/lang/String;)V

    .line 600
    goto :goto_0

    .line 596
    :sswitch_6
    invoke-virtual {p0, p2}, Leasypay/actions/NewOtpHelper;->passwordInputDataChange(Ljava/lang/String;)V

    .line 597
    goto :goto_0

    .line 614
    :sswitch_7
    const-string v0, "Success Event called"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    invoke-direct {p0, p3}, Leasypay/actions/NewOtpHelper;->successEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 628
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6b -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x6e -> :sswitch_4
        0x9e -> :sswitch_3
        0xc9 -> :sswitch_2
        0xdd -> :sswitch_1
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method unregisterBroadcastReceiver()V
    .locals 2

    .line 731
    iget-object v0, p0, Leasypay/actions/NewOtpHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 732
    iget-object v1, p0, Leasypay/actions/NewOtpHelper;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 734
    :cond_0
    return-void
.end method
