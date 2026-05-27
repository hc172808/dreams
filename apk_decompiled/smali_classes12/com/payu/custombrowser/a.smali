.class public Lcom/payu/custombrowser/a;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/payu/custombrowser/util/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/a$b;,
        Lcom/payu/custombrowser/a$a;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static drawerAdapter:Landroid/widget/ArrayAdapter;


# instance fields
.field A:Ljava/lang/String;

.field B:Z

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/Boolean;

.field G:Landroid/os/Bundle;

.field H:Z

.field I:Landroid/widget/FrameLayout;

.field J:Landroid/view/View;

.field K:Landroid/view/View;

.field L:Lcom/payu/custombrowser/util/c;

.field M:Landroid/view/View;

.field N:Landroid/view/View;

.field O:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

.field P:Landroid/os/CountDownTimer;

.field Q:Z

.field R:Z

.field S:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field T:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field U:Ljava/util/concurrent/Executor;

.field V:Landroid/widget/RelativeLayout;

.field W:Landroid/widget/TextView;

.field X:Landroid/widget/TextView;

.field Y:Lcom/payu/custombrowser/c;

.field private a:Z

.field protected autoApprove:Z

.field protected autoSelectOtp:Z

.field private b:Z

.field protected backupOfOTP:Ljava/lang/String;

.field protected backwardJourneyStarted:Z

.field private c:I

.field protected catchAllJSEnabled:Z

.field protected customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

.field final e:Ljava/lang/String;

.field f:Landroid/app/Activity;

.field protected firstTouch:Z

.field protected forwardJourneyForChromeLoaderIsComplete:Z

.field g:Landroid/content/BroadcastReceiver;

.field h:Lorg/json/JSONObject;

.field protected hostName:Ljava/lang/String;

.field i:Lorg/json/JSONObject;

.field protected isOTPFilled:Z

.field protected isSurePayValueLoaded:Z

.field protected isTxnNBType:Z

.field protected isWebviewReloading:Z

.field j:I

.field k:Landroidx/appcompat/app/AlertDialog;

.field l:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

.field protected listOfTxtFld:Ljava/lang/String;

.field m:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected mResetCounter:Ljava/lang/Runnable;

.field protected merchantKey:Ljava/lang/String;

.field n:Z

.field o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected otp:Ljava/lang/String;

.field protected otpTriggered:Z

.field p:Z

.field protected pageType:Ljava/lang/String;

.field protected payuChromeLoaderDisabled:Z

.field protected phpSessionId:Ljava/lang/String;

.field q:Landroid/graphics/drawable/Drawable;

.field r:Landroid/webkit/WebView;

.field protected reviewOrderDetailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payu/custombrowser/bean/ReviewOrderData;",
            ">;"
        }
    .end annotation
.end field

.field s:I

.field public snoozeMode:I

.field protected surePayS2SPayUId:Ljava/lang/String;

.field protected surePayS2Surl:Ljava/lang/String;

.field t:I

.field protected timeOfArrival:Ljava/lang/String;

.field protected timeOfDeparture:Ljava/lang/String;

.field protected timerProgress:Ljava/util/Timer;

.field protected txnId:Ljava/lang/String;

.field protected txnType:Ljava/lang/String;

.field u:I

.field v:Lcom/payu/custombrowser/widgets/a;

.field protected viewOnClickListener:Lcom/payu/custombrowser/a$b;

.field w:I

.field x:Landroid/widget/ProgressBar;

.field y:I

.field z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 61
    sget-boolean v0, Lcom/payu/custombrowser/a;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "https://cbstatic.payu.in/js/sdk_js/v3/"

    goto :goto_0

    :cond_0
    const-string v0, "https://cbjs.payu.in/js/sdk_js/v3/"

    :goto_0
    iput-object v0, p0, Lcom/payu/custombrowser/a;->e:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/a;->snoozeMode:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->payuChromeLoaderDisabled:Z

    .line 68
    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->backwardJourneyStarted:Z

    .line 71
    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->forwardJourneyForChromeLoaderIsComplete:Z

    .line 75
    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->firstTouch:Z

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/payu/custombrowser/a;->pageType:Ljava/lang/String;

    .line 111
    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->n:Z

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/payu/custombrowser/a;->o:Ljava/util/ArrayList;

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payu/custombrowser/a;->z:Landroid/content/BroadcastReceiver;

    .line 148
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/payu/custombrowser/a;->F:Ljava/lang/Boolean;

    .line 196
    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->catchAllJSEnabled:Z

    .line 198
    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->isOTPFilled:Z

    .line 210
    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->otpTriggered:Z

    .line 217
    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->isSurePayValueLoaded:Z

    .line 1132
    iput v0, p0, Lcom/payu/custombrowser/a;->c:I

    .line 1133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/a;->mHandler:Landroid/os/Handler;

    .line 1138
    new-instance v0, Lcom/payu/custombrowser/a$7;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/a$7;-><init>(Lcom/payu/custombrowser/a;)V

    iput-object v0, p0, Lcom/payu/custombrowser/a;->mResetCounter:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/a;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/payu/custombrowser/a;->c:I

    return p0
.end method

.method static synthetic a(Lcom/payu/custombrowser/a;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/payu/custombrowser/a;->c:I

    return p1
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 390
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 392
    :try_start_0
    const-string v1, "payu_id"

    const-string v2, "PAYUID"

    invoke-static {v2, p2}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v1, "txnid"

    sget-object v2, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v1, "merchant_key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string p1, "device_os_version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string p1, "device_resolution"

    iget-object v1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/c;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string p1, "device_manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string p1, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string p1, "network_info"

    iget-object v1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string p1, "sdk_version_name"

    sget-object v1, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string p1, "cb_version_name"

    const-string v1, "7.5.1"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string p1, "package_name"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string p1, "network_strength"

    iget-object p2, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/payu/custombrowser/util/c;->d(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 405
    new-instance p1, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "cb_local_cache_device"

    invoke-direct {p1, p2, v1}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/payu/custombrowser/a;->O:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    .line 406
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    goto :goto_0

    .line 407
    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/payu/custombrowser/a;)I
    .locals 2

    .line 56
    iget v0, p0, Lcom/payu/custombrowser/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/payu/custombrowser/a;->c:I

    return v0
.end method


# virtual methods
.method a(I)V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    iget v0, p0, Lcom/payu/custombrowser/a;->w:I

    if-le v0, p1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/payu/custombrowser/a;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 727
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 728
    iget-object v0, p0, Lcom/payu/custombrowser/a;->x:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string v2, "progress"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 729
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 730
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 731
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 732
    goto :goto_0

    .line 733
    :cond_1
    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    .line 734
    const/16 p1, 0xa

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/a;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 738
    :goto_0
    iput p1, p0, Lcom/payu/custombrowser/a;->w:I

    .line 740
    :cond_3
    return-void
.end method

.method a(ILjava/lang/String;)V
    .locals 8

    .line 653
    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->isRemoving()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 654
    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eq p1, p2, :cond_7

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    goto/16 :goto_3

    .line 661
    :cond_0
    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/payu/custombrowser/a;->payuChromeLoaderDisabled:Z

    if-nez p1, :cond_8

    .line 662
    iget-boolean p1, p0, Lcom/payu/custombrowser/a;->n:Z

    if-nez p1, :cond_8

    .line 663
    iget-object p1, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    if-nez p1, :cond_3

    .line 664
    iget-object p1, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz p1, :cond_2

    .line 665
    invoke-virtual {p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getProgressDialogCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 666
    iget-object p1, p0, Lcom/payu/custombrowser/a;->l:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/payu/custombrowser/a;->C:Ljava/lang/String;

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    sget-object v5, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/payu/custombrowser/a;->pageType:Ljava/lang/String;

    const-string v1, "cb_loader_type"

    const-string v2, "custom"

    invoke-static/range {v0 .. v6}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_1
    iget-object p1, p0, Lcom/payu/custombrowser/a;->l:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/payu/custombrowser/a;->C:Ljava/lang/String;

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    sget-object v5, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/payu/custombrowser/a;->pageType:Ljava/lang/String;

    const-string v1, "cb_loader_type"

    const-string v2, "default"

    invoke-static/range {v0 .. v6}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 670
    :goto_0
    new-instance p1, Lcom/payu/custombrowser/widgets/a;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getProgressDialogCustomView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/payu/custombrowser/widgets/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    goto :goto_1

    .line 672
    :cond_2
    iget-object p1, p0, Lcom/payu/custombrowser/a;->l:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/payu/custombrowser/a;->C:Ljava/lang/String;

    sget-object v5, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    sget-object v6, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/payu/custombrowser/a;->pageType:Ljava/lang/String;

    const-string v2, "cb_loader_type"

    const-string v3, "default"

    invoke-static/range {v1 .. v7}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 673
    new-instance p1, Lcom/payu/custombrowser/widgets/a;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-direct {p1, p2, v0}, Lcom/payu/custombrowser/widgets/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    .line 676
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz p1, :cond_4

    if-eqz p1, :cond_6

    .line 677
    invoke-virtual {p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getProgressDialogCustomView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    .line 678
    :cond_4
    iget-boolean p1, p0, Lcom/payu/custombrowser/a;->isWebviewReloading:Z

    if-eqz p1, :cond_5

    .line 679
    iget-object p1, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    sget v0, Lcom/payu/custombrowser/R$string;->cb_resuming_transaction:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payu/custombrowser/widgets/a;->a(Ljava/lang/String;)V

    .line 680
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/payu/custombrowser/a;->isWebviewReloading:Z

    goto :goto_2

    .line 682
    :cond_5
    iget-object p1, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    sget v0, Lcom/payu/custombrowser/R$string;->cb_please_wait:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/payu/custombrowser/widgets/a;->a(Ljava/lang/String;)V

    .line 685
    :goto_2
    iget-object p1, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    iget-object p2, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/payu/custombrowser/widgets/a;->a(Landroid/content/Context;)V

    .line 687
    :cond_6
    iget-object p1, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    invoke-virtual {p1}, Lcom/payu/custombrowser/widgets/a;->show()V

    .line 688
    iget-boolean p1, p0, Lcom/payu/custombrowser/a;->H:Z

    if-nez p1, :cond_8

    .line 689
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->hideReviewOrderHorizontalBar()V

    .line 690
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->hideReviewOrderDetails()V

    goto :goto_4

    .line 655
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    if-eqz p1, :cond_8

    .line 656
    invoke-virtual {p1}, Lcom/payu/custombrowser/widgets/a;->dismiss()V

    .line 657
    iput-object v0, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    .line 658
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->showReviewOrderHorizontalBar()V

    .line 695
    :cond_8
    :goto_4
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 2

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 358
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 359
    return-void
.end method

.method a(Landroid/view/View;Landroid/content/Context;)V
    .locals 3

    .line 270
    if-eqz p1, :cond_0

    .line 271
    sget v0, Lcom/payu/custombrowser/R$anim;->cb_fade_in:I

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 274
    new-instance v0, Lcom/payu/custombrowser/a$1;

    invoke-direct {v0, p0, p1}, Lcom/payu/custombrowser/a$1;-><init>(Lcom/payu/custombrowser/a;Landroid/view/View;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 421
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/payu/custombrowser/a;->l:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v1, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/custombrowser/a;->C:Ljava/lang/String;

    sget-object v6, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    sget-object v7, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/payu/custombrowser/a;->pageType:Ljava/lang/String;

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception p1

    .line 425
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 426
    :cond_0
    :goto_0
    nop

    .line 427
    :goto_1
    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 1

    .line 493
    const/4 v0, -0x2

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/payu/custombrowser/a;->s:I

    .line 495
    iget v0, p0, Lcom/payu/custombrowser/a;->u:I

    if-eqz v0, :cond_0

    .line 496
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/payu/custombrowser/a;->t:I

    .line 498
    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 368
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1a

    .line 436
    if-eqz p1, :cond_1a

    .line 439
    :try_start_0
    const-string v0, "sbinet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "sbi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "sbi_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 441
    :cond_0
    const-string v0, "icici"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "icicinet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "icicicc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "icici_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    .line 443
    :cond_1
    const-string v0, "kotaknet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "kotak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "kotak_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_9

    .line 445
    :cond_2
    const-string v0, "indus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "indus_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_8

    .line 447
    :cond_3
    const-string v0, "hdfc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "hdfcnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "hdfc_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_7

    .line 449
    :cond_4
    const-string v0, "yesnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "yes_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    .line 451
    :cond_5
    const-string v0, "sc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "sc_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_5

    .line 453
    :cond_6
    const-string v0, "axisnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "axis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "axis_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_4

    .line 455
    :cond_7
    const-string v0, "amex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "amex_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_3

    .line 457
    :cond_8
    const-string v0, "ing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "ing_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 459
    :cond_9
    const-string v0, "idbi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "idbi_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 461
    :cond_a
    const-string v0, "citi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "citi_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 463
    :cond_b
    const-string v0, "unionnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "unionnet_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 464
    :cond_c
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->union_bank_logo:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_c

    .line 462
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->citi:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_c

    .line 460
    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->idbi:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_c

    .line 458
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->ing_logo:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_c

    .line 456
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->cb_amex_logo:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_c

    .line 454
    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->axis_logo:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_c

    .line 452
    :cond_12
    :goto_5
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->scblogo:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 450
    :cond_13
    :goto_6
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->yesbank_logo:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 448
    :cond_14
    :goto_7
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->hdfc_bank:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 446
    :cond_15
    :goto_8
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->induslogo:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 444
    :cond_16
    :goto_9
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->kotak:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 442
    :cond_17
    :goto_a
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->icici:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 440
    :cond_18
    :goto_b
    iget-object p1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$drawable;->sbi:I

    invoke-virtual {p1, v0, v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/a;->q:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_19
    :goto_c
    goto :goto_d

    .line 466
    :catch_0
    move-exception p1

    .line 467
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    :cond_1a
    :goto_d
    return-void
.end method

.method protected cancelTransactionNotification()V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 980
    sget v1, Lcom/payu/custombrowser/util/b;->TRANSACTION_STATUS_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 981
    sget v1, Lcom/payu/custombrowser/util/b;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 982
    return-void
.end method

.method protected checkIfTransactionNBType(Ljava/lang/String;)Z
    .locals 4
    .param p1, "postData"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/a;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pg"

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v2, "nb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 229
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    return v0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    return v0
.end method

.method public checkStatusFromJS(Ljava/lang/String;)V
    .locals 1
    .param p1, "bank"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/payu/custombrowser/a;->checkStatusFromJS(Ljava/lang/String;I)V

    .line 292
    return-void
.end method

.method public checkStatusFromJS(Ljava/lang/String;I)V
    .locals 2
    .param p1, "bank"    # Ljava/lang/String;
    .param p2, "featureConstant"    # I

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/payu/custombrowser/a$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/payu/custombrowser/a$2;-><init>(Lcom/payu/custombrowser/a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    :goto_0
    return-void
.end method

.method d()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 481
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 483
    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .line 507
    :try_start_0
    iget v0, p0, Lcom/payu/custombrowser/a;->u:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/a;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/payu/custombrowser/a;->r:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/webkit/WebView;->measure(II)V

    .line 509
    iget-object v0, p0, Lcom/payu/custombrowser/a;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    .line 510
    iget-object v0, p0, Lcom/payu/custombrowser/a;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/a;->u:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    :goto_0
    return-void
.end method

.method f()V
    .locals 2

    .line 521
    iget v0, p0, Lcom/payu/custombrowser/a;->u:I

    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->e()V

    .line 523
    :cond_0
    iget v0, p0, Lcom/payu/custombrowser/a;->u:I

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/payu/custombrowser/a;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/payu/custombrowser/a;->u:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 525
    iget-object v0, p0, Lcom/payu/custombrowser/a;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    .line 527
    :cond_1
    return-void
.end method

.method g()V
    .locals 2

    .line 534
    iget v0, p0, Lcom/payu/custombrowser/a;->u:I

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/payu/custombrowser/a;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/payu/custombrowser/a;->t:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 536
    iget-object v0, p0, Lcom/payu/custombrowser/a;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    .line 538
    :cond_0
    return-void
.end method

.method public getCbDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getTransactionStatusReceived()Z
    .locals 1

    .line 1101
    iget-boolean v0, p0, Lcom/payu/custombrowser/a;->b:Z

    return v0
.end method

.method h()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/a$3;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/a$3;-><init>(Lcom/payu/custombrowser/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 715
    :cond_0
    return-void
.end method

.method public hideReviewOrderDetails()V
    .locals 3

    .line 1250
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/payu/custombrowser/a;->Y:Lcom/payu/custombrowser/c;

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 1253
    iget-object v1, p0, Lcom/payu/custombrowser/a;->Y:Lcom/payu/custombrowser/c;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1254
    sget v1, Lcom/payu/custombrowser/R$anim;->slide_up_out:I

    sget v2, Lcom/payu/custombrowser/R$anim;->slide_up_in:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 1255
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1258
    :cond_0
    return-void
.end method

.method public hideReviewOrderHorizontalBar()V
    .locals 2

    .line 1223
    iget-boolean v0, p0, Lcom/payu/custombrowser/a;->H:Z

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/payu/custombrowser/a;->V:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1226
    :cond_0
    return-void
.end method

.method i()V
    .locals 1

    .line 747
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->f()V

    .line 748
    const/4 v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/a;->y:I

    .line 749
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->onHelpUnavailable()V

    .line 750
    return-void
.end method

.method protected initAnalytics(Ljava/lang/String;)V
    .locals 2
    .param p1, "sdkMerchantKey"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_cache_analytics"

    invoke-static {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/a;->l:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 381
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/payu/custombrowser/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 382
    return-void
.end method

.method public isRetryURL(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/payu/custombrowser/a;->T:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 823
    sget-boolean v0, Lcom/payu/custombrowser/Bank;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "https://mobiletest.payu.in/_payment_options"

    goto :goto_0

    :cond_0
    const-string v0, "https://secure.payu.in/_payment_options"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/a;->T:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 826
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    const/4 v0, 0x1

    return v0

    .line 829
    :cond_2
    goto :goto_1

    .line 830
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method j()V
    .locals 6

    .line 837
    const-string v0, "postPaymentPgUrlList"

    iget-object v1, p0, Lcom/payu/custombrowser/a;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 849
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "||"

    const-string v3, ""

    const-string v4, " "

    if-eqz v1, :cond_0

    .line 850
    :try_start_1
    iget-object v1, p0, Lcom/payu/custombrowser/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/payu/custombrowser/a;->S:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/a;->h:Lorg/json/JSONObject;

    const-string v1, "retryList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/payu/custombrowser/a;->h:Lorg/json/JSONObject;

    const-string v1, "retryUrlList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/payu/custombrowser/a;->T:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 877
    :cond_1
    goto :goto_2

    .line 874
    :catch_0
    move-exception v0

    .line 875
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->h()V

    .line 876
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 879
    :cond_2
    :goto_2
    return-void
.end method

.method k()V
    .locals 7

    .line 886
    new-instance v6, Lcom/payu/custombrowser/a$4;

    iget-object v0, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantResponseTimeout()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/payu/custombrowser/a$4;-><init>(Lcom/payu/custombrowser/a;JJ)V

    .line 909
    invoke-virtual {v6}, Lcom/payu/custombrowser/a$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/a;->P:Landroid/os/CountDownTimer;

    .line 910
    return-void
.end method

.method l()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/payu/custombrowser/a;->P:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/a$5;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/a$5;-><init>(Lcom/payu/custombrowser/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 957
    :cond_1
    return-void
.end method

.method public loadUrlWebView(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "mJS"    # Lorg/json/JSONObject;
    .param p2, "functName"    # Ljava/lang/String;

    .line 962
    return-void
.end method

.method public onBackApproved()V
    .locals 0

    .line 969
    return-void
.end method

.method public onBackCancelled()V
    .locals 0

    .line 973
    return-void
.end method

.method public onBackPressed(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "alertDialog"    # Landroid/app/AlertDialog$Builder;

    .line 965
    return-void
.end method

.method public onBankError()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$id;->parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 794
    return-void
.end method

.method public onHelpAvailable()V
    .locals 2

    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/a;->a:Z

    .line 802
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$id;->parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 803
    return-void
.end method

.method public onHelpUnavailable()V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$id;->parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    :cond_0
    return-void
.end method

.method protected postToPaytxn()V
    .locals 2

    .line 1110
    iget-boolean v0, p0, Lcom/payu/custombrowser/a;->R:Z

    if-eqz v0, :cond_0

    .line 1111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payu/custombrowser/a$6;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/a$6;-><init>(Lcom/payu/custombrowser/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1124
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1128
    :cond_0
    return-void
.end method

.method public registerBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 761
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    iput-object p1, p0, Lcom/payu/custombrowser/a;->z:Landroid/content/BroadcastReceiver;

    .line 763
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 765
    :cond_0
    return-void
.end method

.method protected resetAutoSelectOTP()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getAutoSelectOTP()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/payu/custombrowser/a;->autoSelectOtp:Z

    .line 245
    return-void
.end method

.method public setReviewOrderButtonProperty(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "reviewOrderTextView"    # Landroid/widget/TextView;

    .line 1193
    iget-boolean v0, p0, Lcom/payu/custombrowser/a;->H:Z

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 1194
    iget-object v0, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableReviewOrder()I

    move-result v0

    if-nez v0, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderButtonText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderButtonTextColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1201
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1202
    new-instance v0, Lcom/payu/custombrowser/a$9;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/a$9;-><init>(Lcom/payu/custombrowser/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1212
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1215
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1217
    :goto_0
    return-void
.end method

.method protected setTransactionStatusReceived(Z)V
    .locals 0
    .param p1, "transactionStatusReceived"    # Z

    .line 1097
    iput-boolean p1, p0, Lcom/payu/custombrowser/a;->b:Z

    .line 1098
    return-void
.end method

.method public showReviewOrderDetails()V
    .locals 3

    .line 1233
    iget-object v0, p0, Lcom/payu/custombrowser/a;->Y:Lcom/payu/custombrowser/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payu/custombrowser/c;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    return-void

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/payu/custombrowser/a;->reviewOrderDetailList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderCustomView()I

    move-result v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/c;->a(Ljava/util/ArrayList;I)Lcom/payu/custombrowser/c;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/a;->Y:Lcom/payu/custombrowser/c;

    .line 1238
    invoke-virtual {p0}, Lcom/payu/custombrowser/a;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 1239
    sget v1, Lcom/payu/custombrowser/R$anim;->slide_up_in:I

    sget v2, Lcom/payu/custombrowser/R$anim;->slide_up_out:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 1240
    sget v1, Lcom/payu/custombrowser/R$id;->payu_review_order:I

    iget-object v2, p0, Lcom/payu/custombrowser/a;->Y:Lcom/payu/custombrowser/c;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1241
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1243
    :cond_1
    return-void
.end method

.method public showReviewOrderHorizontalBar()V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/payu/custombrowser/a;->v:Lcom/payu/custombrowser/widgets/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    return-void

    .line 1169
    :cond_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/a;->H:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/a;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableReviewOrder()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/payu/custombrowser/a;->n:Z

    if-nez v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/payu/custombrowser/a;->o:Ljava/util/ArrayList;

    const-string v1, "review_order_custom_browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/payu/custombrowser/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/a;->V:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/payu/custombrowser/a;->V:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/payu/custombrowser/a$8;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/a$8;-><init>(Lcom/payu/custombrowser/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    iget-object v0, p0, Lcom/payu/custombrowser/a;->W:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/a;->setReviewOrderButtonProperty(Landroid/widget/TextView;)V

    .line 1184
    :cond_2
    return-void
.end method

.method public unregisterBroadcast(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;

    .line 773
    iget-object v0, p0, Lcom/payu/custombrowser/a;->z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/a;->z:Landroid/content/BroadcastReceiver;

    .line 777
    :cond_0
    return-void
.end method

.method public wasCBVisibleOnce()Z
    .locals 1

    .line 806
    iget-boolean v0, p0, Lcom/payu/custombrowser/a;->a:Z

    return v0
.end method
