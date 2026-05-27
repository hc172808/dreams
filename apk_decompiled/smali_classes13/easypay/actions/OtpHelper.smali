.class public Leasypay/actions/OtpHelper;
.super Ljava/lang/Object;
.source "OtpHelper.java"

# interfaces
.implements Leasypay/listeners/WebClientListener;


# instance fields
.field private action:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field private autoFillerHelperEditText:Landroid/widget/EditText;

.field customEventReceiver:Landroid/content/BroadcastReceiver;

.field private editTextOtp:Landroid/widget/EditText;

.field private fields:Ljava/lang/String;

.field private fragment:Leasypay/actions/EasypayBrowserFragment;

.field private injectCount:I

.field public isElementFired:Z

.field private isEventRegsitered:Z

.field private isIntermediateclicked:Z

.field private isOtpdetcted:Z

.field private isReceiverBinded:Ljava/lang/Boolean;

.field private isSmsRegsitered:Ljava/lang/Boolean;

.field private javascrip:Ljava/lang/String;

.field private mAnalyticsManager:Leasypay/actions/GAEventManager;

.field private mMsgKeywords:Ljava/lang/String;

.field private mMsgSender:Ljava/lang/String;

.field private mOTPHint:Landroid/widget/TextView;

.field private mOTPText:Ljava/lang/String;

.field public mwebViewClient:Leasypay/manager/EasypayWebViewClient;

.field public myreceiver:Landroid/content/BroadcastReceiver;

.field private otpReceiveTimer:Ljava/util/Timer;

.field private otpTimer:Ljava/util/Timer;

.field private txtWatcher:Landroid/text/TextWatcher;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leasypay/manager/EasypayWebViewClient;)V
    .locals 5
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "frag"    # Leasypay/actions/EasypayBrowserFragment;
    .param p5, "msgSender"    # Ljava/lang/String;
    .param p6, "msgPattern"    # Ljava/lang/String;
    .param p7, "msgKeywords"    # Ljava/lang/String;
    .param p8, "mwebViewClient"    # Leasypay/manager/EasypayWebViewClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Leasypay/actions/EasypayBrowserFragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Leasypay/manager/EasypayWebViewClient;",
            ")V"
        }
    .end annotation

    .line 172
    .local p4, "actn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/OtpHelper;->isReceiverBinded:Ljava/lang/Boolean;

    .line 67
    iput v0, p0, Leasypay/actions/OtpHelper;->injectCount:I

    .line 70
    new-instance v1, Leasypay/actions/OtpHelper$1;

    invoke-direct {v1, p0}, Leasypay/actions/OtpHelper$1;-><init>(Leasypay/actions/OtpHelper;)V

    iput-object v1, p0, Leasypay/actions/OtpHelper;->myreceiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v1, Leasypay/actions/OtpHelper$2;

    invoke-direct {v1, p0}, Leasypay/actions/OtpHelper$2;-><init>(Leasypay/actions/OtpHelper;)V

    iput-object v1, p0, Leasypay/actions/OtpHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput-object p1, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    .line 175
    iput-object p3, p0, Leasypay/actions/OtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 177
    iput-object p5, p0, Leasypay/actions/OtpHelper;->mMsgSender:Ljava/lang/String;

    .line 178
    iput-object p7, p0, Leasypay/actions/OtpHelper;->mMsgKeywords:Ljava/lang/String;

    .line 179
    iput-object p4, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    .line 180
    iput-object p2, p0, Leasypay/actions/OtpHelper;->webview:Landroid/webkit/WebView;

    .line 181
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getWebClientInstance()Leasypay/manager/EasypayWebViewClient;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/OtpHelper;->mwebViewClient:Leasypay/manager/EasypayWebViewClient;

    .line 185
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getmAnalyticsManager()Leasypay/actions/GAEventManager;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/OtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    .line 187
    :try_start_0
    iget-object v1, p0, Leasypay/actions/OtpHelper;->editTextOtp:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 188
    new-instance v2, Leasypay/actions/OtpHelper$3;

    invoke-direct {v2, p0}, Leasypay/actions/OtpHelper$3;-><init>(Leasypay/actions/OtpHelper;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 198
    iget-object v1, p0, Leasypay/actions/OtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v1}, Leasypay/actions/EasypayBrowserFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, "focusedView":Landroid/view/View;
    iget-object v2, p0, Leasypay/actions/OtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v2}, Leasypay/actions/EasypayBrowserFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 201
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "focusedView":Landroid/view/View;
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 208
    :goto_0
    if-eqz p8, :cond_1

    .line 210
    invoke-virtual {p8, p0}, Leasypay/manager/EasypayWebViewClient;->addAssistWebClientListener(Leasypay/listeners/WebClientListener;)V

    .line 214
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.CUSTOM_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "customEventFilter":Landroid/content/IntentFilter;
    :try_start_1
    iget-object v1, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Leasypay/actions/OtpHelper;->customEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Leasypay/actions/OtpHelper;->isEventRegsitered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    goto :goto_1

    .line 218
    :catch_1
    move-exception v1

    .line 223
    :goto_1
    iget-object v1, p0, Leasypay/actions/OtpHelper;->webview:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 225
    const-string v1, "javascript:"

    iput-object v1, p0, Leasypay/actions/OtpHelper;->javascrip:Ljava/lang/String;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Leasypay/actions/OtpHelper;->javascrip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " document.addEventListener(\"DOMContentLoaded\", Android.sendEvent(\'FIRE ELEMENT\', 0, 0), false);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leasypay/actions/OtpHelper;->javascrip:Ljava/lang/String;

    .line 229
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 230
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Leasypay/actions/OtpHelper$4;

    invoke-direct {v2, p0}, Leasypay/actions/OtpHelper$4;-><init>(Leasypay/actions/OtpHelper;)V

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void

    .line 254
    .end local v1    # "mHandler":Landroid/os/Handler;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Leasypay/actions/OtpHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->autoFillerHelperEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Leasypay/actions/OtpHelper;)Leasypay/actions/GAEventManager;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    return-object v0
.end method

.method static synthetic access$1100(Leasypay/actions/OtpHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->mOTPText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Leasypay/actions/OtpHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Leasypay/actions/OtpHelper;)Leasypay/actions/EasypayBrowserFragment;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    return-object v0
.end method

.method static synthetic access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->editTextOtp:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Leasypay/actions/OtpHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->javascrip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Leasypay/actions/OtpHelper;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$700(Leasypay/actions/OtpHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->fields:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Leasypay/actions/OtpHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Leasypay/actions/OtpHelper;

    .line 43
    iget-object v0, p0, Leasypay/actions/OtpHelper;->mOTPHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Leasypay/actions/OtpHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Leasypay/actions/OtpHelper;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Leasypay/actions/OtpHelper;->isOtpdetcted:Z

    return p1
.end method

.method private checkSMSAlreadyExist(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 712
    if-eqz p1, :cond_1

    .line 716
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 717
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "date>=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v7, Leasypay/manager/EasypayWebViewClient;->smsTrackingTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 718
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 719
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    const-string v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 721
    .local v2, "indexBody":I
    const-string v3, "address"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 722
    .local v3, "indexAddr":I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, "body":Ljava/lang/String;
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 725
    .local v5, "address":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Leasypay/actions/OtpHelper;->checkSms(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .end local v2    # "indexBody":I
    .end local v3    # "indexAddr":I
    .end local v4    # "body":Ljava/lang/String;
    .end local v5    # "address":Ljava/lang/String;
    goto :goto_0

    .line 731
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_0
    goto :goto_1

    .line 729
    :catch_0
    move-exception v0

    .line 733
    :cond_1
    :goto_1
    return-void
.end method

.method private checkSMSKeywords(Ljava/lang/String;)Z
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "contains":Z
    iget-object v1, p0, Leasypay/actions/OtpHelper;->mMsgKeywords:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 454
    iget-object v1, p0, Leasypay/actions/OtpHelper;->mMsgKeywords:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "keywords":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 456
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "unformatMsg":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 458
    .local v5, "keyword":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    const/4 v0, 0x1

    .line 460
    goto :goto_1

    .line 457
    .end local v5    # "keyword":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "keywords":[Ljava/lang/String;
    .end local v2    # "unformatMsg":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_2

    .line 466
    :cond_2
    const/4 v0, 0x1

    .line 468
    :goto_2
    return v0
.end method

.method private checkSMSSender(Ljava/lang/String;)Z
    .locals 7
    .param p1, "smsSender"    # Ljava/lang/String;

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "contains":Z
    iget-object v1, p0, Leasypay/actions/OtpHelper;->mMsgSender:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    iget-object v1, p0, Leasypay/actions/OtpHelper;->mMsgSender:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "senders":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 434
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 435
    .local v4, "sender":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 437
    iget-object v2, p0, Leasypay/actions/OtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Leasypay/actions/GAEventManager;->smsSenderName(Ljava/lang/String;)V

    goto :goto_1

    .line 434
    .end local v4    # "sender":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "senders":[Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_2

    .line 446
    :cond_2
    const/4 v0, 0x1

    .line 448
    :goto_2
    return v0
.end method

.method private smsBroadCastRegsitered()Z
    .locals 3

    .line 424
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Leasypay/actions/OtpHelper;->myreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 426
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public OnWcPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otp helper Wc page finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "otphelper"

    invoke-static {v1, v0}, Leasypay/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-boolean v0, p0, Leasypay/actions/OtpHelper;->isIntermediateclicked:Z

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    new-instance v1, Leasypay/actions/OtpHelper$11;

    invoke-direct {v1, p0}, Leasypay/actions/OtpHelper$11;-><init>(Leasypay/actions/OtpHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    :cond_0
    return-void
.end method

.method public OnWcPageStart(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 751
    return-void
.end method

.method public OnWcSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "inView"    # Landroid/webkit/WebView;
    .param p2, "inHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "inError"    # Landroid/net/http/SslError;

    .line 756
    return-void
.end method

.method public WcshouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 766
    return-void
.end method

.method public WcshouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Ljava/lang/Object;

    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public activateOtpHelper()V
    .locals 4

    .line 288
    iget-object v0, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    new-instance v1, Leasypay/actions/OtpHelper$6;

    invoke-direct {v1, p0}, Leasypay/actions/OtpHelper$6;-><init>(Leasypay/actions/OtpHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    iget-object v0, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 302
    :cond_0
    new-instance v0, Leasypay/actions/OtpHelper$7;

    invoke-direct {v0, p0}, Leasypay/actions/OtpHelper$7;-><init>(Leasypay/actions/OtpHelper;)V

    iput-object v0, p0, Leasypay/actions/OtpHelper;->txtWatcher:Landroid/text/TextWatcher;

    .line 351
    :try_start_0
    iget-object v1, p0, Leasypay/actions/OtpHelper;->editTextOtp:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 354
    .local v0, "delayHandler":Landroid/os/Handler;
    new-instance v1, Leasypay/actions/OtpHelper$8;

    invoke-direct {v1, p0}, Leasypay/actions/OtpHelper$8;-><init>(Leasypay/actions/OtpHelper;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    .end local v0    # "delayHandler":Landroid/os/Handler;
    :cond_1
    iget-object v0, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Leasypay/actions/OtpHelper;->checkSMSAlreadyExist(Landroid/app/Activity;)V

    .line 383
    iget-object v0, p0, Leasypay/actions/OtpHelper;->isSmsRegsitered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    invoke-direct {p0}, Leasypay/actions/OtpHelper;->smsBroadCastRegsitered()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/OtpHelper;->isSmsRegsitered:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_2
    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 392
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Leasypay/actions/OtpHelper;->isReceiverBinded:Ljava/lang/Boolean;

    .line 420
    :cond_3
    return-void
.end method

.method public approveOtp()V
    .locals 5

    .line 604
    iget-object v0, p0, Leasypay/actions/OtpHelper;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->onSubmitOtpPaytmAssist(Z)V

    .line 608
    :cond_0
    const-string v0, "javascript:"

    .line 611
    .local v0, "javascript":Ljava/lang/String;
    iget-object v2, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    const-string v3, "action"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "otphelper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    const-string v2, "Android.showLog(\'approve otp- \'+ typeof(autoSubmitForm));autoSubmitForm();"

    .line 614
    .local v2, "triggerAutoSubmit":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .end local v2    # "triggerAutoSubmit":Ljava/lang/String;
    goto :goto_0

    .line 617
    :cond_1
    iget-object v2, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    const-string v3, "submitJs"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    iget-object v2, p0, Leasypay/actions/OtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    const/4 v3, 0x0

    iput-boolean v3, v2, Leasypay/actions/EasypayBrowserFragment;->isNbOtpFired:Z

    goto :goto_0

    .line 620
    :cond_2
    iget-object v2, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    const-string v3, "customjs"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    :cond_3
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4

    .line 626
    iget-object v2, p0, Leasypay/actions/OtpHelper;->webview:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 627
    iget-object v2, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    const-string v3, "bank"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "sbi-nb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Leasypay/actions/OtpHelper;->isIntermediateclicked:Z

    goto :goto_1

    .line 631
    :cond_4
    iget-object v1, p0, Leasypay/actions/OtpHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 636
    :goto_1
    return-void
.end method

.method public checkSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "msgFrom"    # Ljava/lang/String;

    .line 477
    invoke-direct {p0, p2}, Leasypay/actions/OtpHelper;->checkSMSSender(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    return-void

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Leasypay/actions/OtpHelper;->checkSMSKeywords(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    return-void

    .line 485
    :cond_1
    const-string v0, "\\b\\d{6}\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 486
    .local v0, "p6":Ljava/util/regex/Pattern;
    const-string v1, "\\b\\d{4}\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 487
    .local v1, "p4":Ljava/util/regex/Pattern;
    const-string v2, "(|^)\\d{8}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 490
    .local v2, "p8":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 491
    .local v3, "m6":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 492
    .local v4, "m4":Ljava/util/regex/Matcher;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 535
    .local v5, "m8":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 536
    iget-object v6, p0, Leasypay/actions/OtpHelper;->otpTimer:Ljava/util/Timer;

    if-eqz v6, :cond_2

    .line 537
    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 544
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, "receivedOtp":Ljava/lang/String;
    iget-object v7, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    const-string v8, "receivedOtp"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v7, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    new-instance v8, Leasypay/actions/OtpHelper$9;

    invoke-direct {v8, p0}, Leasypay/actions/OtpHelper$9;-><init>(Leasypay/actions/OtpHelper;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 599
    .end local v6    # "receivedOtp":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public fireElemntJs()V
    .locals 7

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Leasypay/actions/OtpHelper;->isElementFired:Z

    .line 258
    iget-object v0, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    const-string v1, "fields"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Leasypay/actions/OtpHelper;->fields:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Leasypay/actions/OtpHelper;->fields:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "var a = fields; if(a.length&&!(fields[0].offsetParent == null)){Android.sendEvent(\'activateOtpHelper\', 0, 0); var aa=a; autoFillOtp=function(value){ aa[0].value = value; }; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "inputFinder":Ljava/lang/String;
    const-string v1, ""

    .line 261
    .local v1, "focusListener":Ljava/lang/String;
    const-string v2, "if(fields.length){ fields[0].addEventListener(\'input\', function(e){Android.logTempData(this.value)});}"

    .line 262
    .local v2, "eventListener":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leasypay/actions/OtpHelper;->javascrip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    const-string v5, "functionStart"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/OtpHelper;->action:Ljava/util/Map;

    const-string v5, "functionEnd"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Leasypay/actions/OtpHelper;->javascrip:Ljava/lang/String;

    .line 264
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 265
    .local v3, "mHandler":Landroid/os/Handler;
    new-instance v4, Leasypay/actions/OtpHelper$5;

    invoke-direct {v4, p0}, Leasypay/actions/OtpHelper$5;-><init>(Leasypay/actions/OtpHelper;)V

    const-wide/16 v5, 0x14

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    return-void
.end method

.method public logTempData(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 639
    iput-object p1, p0, Leasypay/actions/OtpHelper;->mOTPText:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    new-instance v1, Leasypay/actions/OtpHelper$10;

    invoke-direct {v1, p0}, Leasypay/actions/OtpHelper$10;-><init>(Leasypay/actions/OtpHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method

.method public resendOtp()V
    .locals 3

    .line 661
    const-string v0, "javascript:"

    .line 662
    .local v0, "javascript":Ljava/lang/String;
    const-string v1, "Android.showLog(\'resend otp- \'+ typeof(autoResendOtp));autoResendOtp();"

    .line 663
    .local v1, "triggerAutoResend":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    iget-object v2, p0, Leasypay/actions/OtpHelper;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 665
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Leasypay/actions/OtpHelper;->toggleButtons(Ljava/lang/Boolean;)V

    .line 666
    return-void
.end method

.method public reset()V
    .locals 3

    .line 672
    iget-object v0, p0, Leasypay/actions/OtpHelper;->fragment:Leasypay/actions/EasypayBrowserFragment;

    sget v1, Lpaytm/assist/easypay/easypay/R$id;->otpHelper:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->toggleView(ILjava/lang/Boolean;)V

    .line 673
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Leasypay/actions/OtpHelper;->toggleButtons(Ljava/lang/Boolean;)V

    .line 676
    :try_start_0
    iget-object v0, p0, Leasypay/actions/OtpHelper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Leasypay/actions/OtpHelper;->mOTPHint:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 677
    sget v2, Lpaytm/assist/easypay/easypay/R$string;->wait_otp:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :cond_0
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kanish"

    invoke-static {v2, v1}, Leasypay/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public toggleButtons(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "show"    # Ljava/lang/Boolean;

    .line 695
    iget-object v0, p0, Leasypay/actions/OtpHelper;->editTextOtp:Landroid/widget/EditText;

    .line 709
    return-void
.end method
