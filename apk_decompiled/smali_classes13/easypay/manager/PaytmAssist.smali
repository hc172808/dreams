.class public Leasypay/manager/PaytmAssist;
.super Ljava/lang/Object;
.source "PaytmAssist.java"


# static fields
.field private static assistInstance:Leasypay/manager/PaytmAssist;

.field private static context:Landroid/content/Context;

.field private static isEasyPayActive:Z

.field public static isEasyPayEnabled:Z


# instance fields
.field private appVersionTest:Ljava/lang/String;

.field private bankName:Ljava/lang/String;

.field private cardDetails:Ljava/lang/String;

.field private cardScheme:Ljava/lang/String;

.field private configUrlToHit:Ljava/lang/String;

.field private easyPayHelper:Leasypay/manager/EasyPayHelper;

.field private fragment:Leasypay/actions/EasypayBrowserFragment;

.field private fragmentViewId:Ljava/lang/Integer;

.field private isAssistEngineTerminated:Z

.field private isFragmentResumed:Z

.field private isFragmentStopped:Z

.field private isShowNbLoader:Z

.field private lastLoadedUrl:Ljava/lang/String;

.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mAnalyticsExtraParam:Ljava/lang/StringBuilder;

.field private mAnalyticsManager:Leasypay/actions/GAEventManager;

.field private mAppCallback:Leasypay/listeners/AppCallbacks;

.field private mEventCallBack:Leasypay/listeners/AssistEventsCallBack;

.field private mEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWcListListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leasypay/listeners/WebClientListener;",
            ">;"
        }
    .end annotation
.end field

.field private mid:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private paymentWebClient:Landroid/webkit/WebViewClient;

.field private webClientInstance:Leasypay/manager/EasypayWebViewClient;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    sput-object v0, Leasypay/manager/PaytmAssist;->assistInstance:Leasypay/manager/PaytmAssist;

    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Leasypay/manager/PaytmAssist;->isEasyPayActive:Z

    .line 89
    sput-boolean v0, Leasypay/manager/PaytmAssist;->isEasyPayEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->webView:Landroid/webkit/WebView;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->mEventMap:Ljava/util/Map;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Leasypay/manager/PaytmAssist;->isShowNbLoader:Z

    .line 116
    const-string v0, ""

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->configUrlToHit:Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Leasypay/manager/PaytmAssist;->isFragmentResumed:Z

    .line 147
    iput-boolean v0, p0, Leasypay/manager/PaytmAssist;->isFragmentStopped:Z

    return-void
.end method

.method static synthetic access$000(Leasypay/manager/PaytmAssist;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Leasypay/manager/PaytmAssist;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Leasypay/manager/PaytmAssist;->setConfigUrlToHit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Leasypay/manager/PaytmAssist;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Leasypay/manager/PaytmAssist;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Leasypay/manager/PaytmAssist;->downloadBankWiseConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Leasypay/manager/PaytmAssist;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leasypay/manager/PaytmAssist;

    .line 84
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Leasypay/manager/PaytmAssist;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 1
    .param p0, "x0"    # Leasypay/manager/PaytmAssist;

    .line 84
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic access$400(Leasypay/manager/PaytmAssist;)V
    .locals 0
    .param p0, "x0"    # Leasypay/manager/PaytmAssist;

    .line 84
    invoke-direct {p0}, Leasypay/manager/PaytmAssist;->initAssist()V

    return-void
.end method

.method private accessCheckApi()V
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leasypay/manager/PaytmAssist$2;

    invoke-direct {v1, p0}, Leasypay/manager/PaytmAssist$2;-><init>(Leasypay/manager/PaytmAssist;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 474
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 477
    return-void
.end method

.method private configureWebClient()V
    .locals 2

    .line 424
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-direct {v0}, Leasypay/manager/PaytmAssist;->getPaymentWebClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    .line 425
    .local v0, "paymentWebViewClient":Landroid/webkit/WebViewClient;
    if-nez v0, :cond_0

    .line 426
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getWebClientInstance()Leasypay/manager/EasypayWebViewClient;

    move-result-object v0

    .line 428
    :cond_0
    iget-object v1, p0, Leasypay/manager/PaytmAssist;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 430
    return-void
.end method

.method private downloadBankWiseConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 535
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Leasypay/utils/EasyPayConfigDownloader;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_bank_req"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Leasypay/utils/EasyPayConfigDownloader;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 542
    :goto_0
    return-void
.end method

.method private fetchAPIByAppVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leasypay/manager/PaytmAssist$1;

    invoke-direct {v1, p0, p1}, Leasypay/manager/PaytmAssist$1;-><init>(Leasypay/manager/PaytmAssist;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 420
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 421
    return-void
.end method

.method private freeStorage()Ljava/lang/String;
    .locals 7

    .line 718
    const-string v0, ""

    .line 720
    .local v0, "storage":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 721
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    mul-long v2, v2, v4

    .line 722
    .local v2, "bytesAvailable":J
    const-wide/32 v4, 0x100000

    div-long v4, v2, v4

    .line 723
    .local v4, "megAvailable":J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 726
    .end local v1    # "stat":Landroid/os/StatFs;
    .end local v2    # "bytesAvailable":J
    .end local v4    # "megAvailable":J
    goto :goto_0

    .line 724
    :catch_0
    move-exception v1

    .line 727
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getAssistInstance()Leasypay/manager/PaytmAssist;
    .locals 2

    const-class v0, Leasypay/manager/PaytmAssist;

    monitor-enter v0

    .line 185
    :try_start_0
    sget-object v1, Leasypay/manager/PaytmAssist;->assistInstance:Leasypay/manager/PaytmAssist;

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Leasypay/manager/PaytmAssist;

    invoke-direct {v1}, Leasypay/manager/PaytmAssist;-><init>()V

    sput-object v1, Leasypay/manager/PaytmAssist;->assistInstance:Leasypay/manager/PaytmAssist;

    .line 188
    :cond_0
    sget-object v1, Leasypay/manager/PaytmAssist;->assistInstance:Leasypay/manager/PaytmAssist;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 196
    sget-object v0, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getEasyPayActiveStatus()Z
    .locals 1

    .line 204
    sget-boolean v0, Leasypay/manager/PaytmAssist;->isEasyPayActive:Z

    return v0
.end method

.method public static getEasyPayEnabledStatus(Z)V
    .locals 0
    .param p0, "isEasyPayEnabled"    # Z

    .line 216
    sput-boolean p0, Leasypay/manager/PaytmAssist;->isEasyPayEnabled:Z

    .line 217
    return-void
.end method

.method private getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 673
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 674
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 675
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    move-object v2, v3

    .line 678
    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 679
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 680
    const-string v0, "WIFI"

    return-object v0

    .line 681
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 682
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 683
    .local v3, "networkType":I
    packed-switch v3, :pswitch_data_0

    .line 703
    const-string v0, "Unknown"

    goto :goto_0

    .line 701
    :pswitch_0
    const-string v0, "4G"

    return-object v0

    .line 699
    :pswitch_1
    const-string v0, "3G"

    return-object v0

    .line 689
    :pswitch_2
    const-string v0, "2G"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 703
    :goto_0
    return-object v0

    .line 706
    .end local v3    # "networkType":I
    :cond_2
    return-object v0

    .line 709
    :cond_3
    return-object v0

    .line 711
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 712
    .local v1, "var4":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPaymentWebClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 757
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->paymentWebClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method private inflatePaytmAssist()V
    .locals 7

    .line 568
    :try_start_0
    const-string v0, "Creating EasypayBrowserFragment"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    invoke-static {}, Leasypay/actions/EasypayBrowserFragment;->newInstance()Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 570
    invoke-virtual {p0, v0}, Leasypay/manager/PaytmAssist;->setFragment(Leasypay/actions/EasypayBrowserFragment;)V

    .line 571
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 572
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 573
    .local v1, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    iget-object v2, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v2}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 574
    iget-object v2, p0, Leasypay/manager/PaytmAssist;->fragmentViewId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 575
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 576
    iget-object v2, p0, Leasypay/manager/PaytmAssist;->webView:Landroid/webkit/WebView;

    new-instance v3, Leasypay/clients/EasypayWebChromeClient;

    iget-object v4, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-direct {v3, v4}, Leasypay/clients/EasypayWebChromeClient;-><init>(Leasypay/actions/EasypayBrowserFragment;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 577
    iget-object v2, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 578
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 579
    .local v3, "version":Ljava/lang/String;
    iget-object v4, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    iget-object v5, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Leasypay/actions/GAEventManager;->assistMerchantDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v4, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    iget-object v5, p0, Leasypay/manager/PaytmAssist;->mid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Leasypay/actions/GAEventManager;->midInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "version":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initAssist()V
    .locals 5

    .line 488
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_4

    sget-object v0, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 491
    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "Version Not Found"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Leasypay/manager/PaytmAssist;->isEasyPayEnabled:Z

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->isSmsPermission(Z)V

    .line 493
    invoke-direct {p0}, Leasypay/manager/PaytmAssist;->inflatePaytmAssist()V

    .line 495
    :try_start_0
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 497
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 498
    .local v1, "version":Ljava/lang/String;
    iget-object v2, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    iget-object v3, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Leasypay/actions/GAEventManager;->assistMerchantDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "version":Ljava/lang/String;
    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Leasypay/actions/GAEventManager;->assistMerchantDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 504
    :goto_0
    goto :goto_2

    .line 507
    :cond_1
    sget-object v0, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Leasypay/manager/PaytmAssist;->isEasyPayEnabled:Z

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v0, v3}, Leasypay/actions/GAEventManager;->isSmsPermission(Z)V

    .line 509
    invoke-direct {p0}, Leasypay/manager/PaytmAssist;->inflatePaytmAssist()V

    .line 511
    :try_start_1
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 513
    .restart local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 514
    .restart local v1    # "version":Ljava/lang/String;
    iget-object v2, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    iget-object v3, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Leasypay/actions/GAEventManager;->assistMerchantDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "version":Ljava/lang/String;
    goto :goto_1

    .line 516
    :cond_2
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Leasypay/actions/GAEventManager;->assistMerchantDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 518
    :catch_1
    move-exception v0

    .line 520
    :goto_1
    goto :goto_2

    .line 523
    :cond_3
    :try_start_2
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 524
    .restart local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 525
    .restart local v1    # "version":Ljava/lang/String;
    iget-object v2, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    iget-object v3, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Leasypay/actions/GAEventManager;->assistMerchantDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 528
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "version":Ljava/lang/String;
    goto :goto_2

    .line 526
    :catch_2
    move-exception v0

    .line 531
    :cond_4
    :goto_2
    return-void
.end method

.method private static setAssistInstance(Leasypay/manager/PaytmAssist;)V
    .locals 0
    .param p0, "assistInstance"    # Leasypay/manager/PaytmAssist;

    .line 192
    sput-object p0, Leasypay/manager/PaytmAssist;->assistInstance:Leasypay/manager/PaytmAssist;

    .line 193
    return-void
.end method

.method private setConfigUrlToHit(Ljava/lang/String;)V
    .locals 0
    .param p1, "configUrlToHit"    # Ljava/lang/String;

    .line 765
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->configUrlToHit:Ljava/lang/String;

    .line 766
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 200
    sput-object p0, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;

    .line 201
    return-void
.end method

.method public static setEasyPayActiveStatus(Z)V
    .locals 0
    .param p0, "isEasyPayActive"    # Z

    .line 208
    sput-boolean p0, Leasypay/manager/PaytmAssist;->isEasyPayActive:Z

    .line 209
    return-void
.end method

.method public static setEasyPayEnabledStatus()Z
    .locals 1

    .line 212
    sget-boolean v0, Leasypay/manager/PaytmAssist;->isEasyPayEnabled:Z

    return v0
.end method

.method private setEasyPayHelper()V
    .locals 1

    .line 230
    new-instance v0, Leasypay/manager/EasyPayHelper;

    invoke-direct {v0}, Leasypay/manager/EasyPayHelper;-><init>()V

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->easyPayHelper:Leasypay/manager/EasyPayHelper;

    .line 232
    return-void
.end method

.method private setFragmentViewId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "fragmentViewId"    # Ljava/lang/Integer;

    .line 243
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->fragmentViewId:Ljava/lang/Integer;

    .line 244
    return-void
.end method

.method private setWebClientInstance(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 262
    if-eqz p1, :cond_0

    .line 263
    new-instance v0, Leasypay/manager/EasypayWebViewClient;

    invoke-direct {v0, p1}, Leasypay/manager/EasypayWebViewClient;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->webClientInstance:Leasypay/manager/EasypayWebViewClient;

    .line 265
    :cond_0
    return-void
.end method

.method private setWebClientInstance(Leasypay/manager/EasypayWebViewClient;)V
    .locals 0
    .param p1, "webClientInstance"    # Leasypay/manager/EasypayWebViewClient;

    .line 247
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->webClientInstance:Leasypay/manager/EasypayWebViewClient;

    .line 248
    return-void
.end method

.method private setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 592
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->webView:Landroid/webkit/WebView;

    .line 593
    return-void
.end method


# virtual methods
.method public geTxnBank()Ljava/lang/String;
    .locals 1

    .line 732
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->bankName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    const/4 v0, 0x0

    return-object v0

    .line 735
    :cond_0
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionTest()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->appVersionTest:Ljava/lang/String;

    return-object v0
.end method

.method getAssistEngineTerminatedStatus()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Leasypay/manager/PaytmAssist;->isAssistEngineTerminated:Z

    return v0
.end method

.method getCardDetails()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->cardDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigUrlToHit()Ljava/lang/String;
    .locals 1

    .line 761
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->configUrlToHit:Ljava/lang/String;

    return-object v0
.end method

.method public getEasyPayHelper()Leasypay/manager/EasyPayHelper;
    .locals 1

    .line 220
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->easyPayHelper:Leasypay/manager/EasyPayHelper;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Leasypay/manager/EasyPayHelper;

    invoke-direct {v0}, Leasypay/manager/EasyPayHelper;-><init>()V

    return-object v0

    .line 223
    :cond_0
    return-object v0
.end method

.method public getFragment()Leasypay/actions/EasypayBrowserFragment;
    .locals 1

    .line 608
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    return-object v0
.end method

.method public getLastLoadedUrl()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->lastLoadedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnPayType()Ljava/lang/String;
    .locals 1

    .line 749
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->payType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const-string v0, ""

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->payType:Ljava/lang/String;

    .line 753
    :cond_0
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getWebClientInstance()Leasypay/manager/EasypayWebViewClient;
    .locals 2

    .line 251
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->webClientInstance:Leasypay/manager/EasypayWebViewClient;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Leasypay/manager/EasypayWebViewClient;

    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Leasypay/manager/EasypayWebViewClient;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->webClientInstance:Leasypay/manager/EasypayWebViewClient;

    .line 256
    :cond_0
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->webClientInstance:Leasypay/manager/EasypayWebViewClient;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 588
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getmAnalyticsExtraParam()Ljava/lang/StringBuilder;
    .locals 1

    .line 286
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getmAnalyticsManager()Leasypay/actions/GAEventManager;
    .locals 1

    .line 616
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    return-object v0
.end method

.method public getmEventCallBack()Leasypay/listeners/AssistEventsCallBack;
    .locals 1

    .line 112
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mEventCallBack:Leasypay/listeners/AssistEventsCallBack;

    return-object v0
.end method

.method public getmEventMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mEventMap:Ljava/util/Map;

    return-object v0
.end method

.method getmWcListListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Leasypay/listeners/WebClientListener;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mWcListListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isAssistLayoutPopped()Z
    .locals 1

    .line 769
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    .line 770
    iget-boolean v0, v0, Leasypay/actions/EasypayBrowserFragment;->isAssistVisible:Z

    return v0

    .line 772
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFragmentPaused()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Leasypay/manager/PaytmAssist;->isFragmentStopped:Z

    return v0
.end method

.method public isFragmentResumed()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Leasypay/manager/PaytmAssist;->isFragmentResumed:Z

    return v0
.end method

.method public registerSMSCallBack(Leasypay/listeners/AppCallbacks;)V
    .locals 0
    .param p1, "appCallbacks"    # Leasypay/listeners/AppCallbacks;

    .line 479
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->mAppCallback:Leasypay/listeners/AppCallbacks;

    .line 480
    return-void
.end method

.method public removeAssist()V
    .locals 2

    .line 546
    :try_start_0
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 548
    .local v0, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    iget-object v1, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 549
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 551
    .end local v0    # "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    :cond_0
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 552
    iput-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 554
    :cond_1
    sget-object v0, Leasypay/manager/PaytmAssist;->assistInstance:Leasypay/manager/PaytmAssist;

    if-eqz v0, :cond_2

    .line 555
    sput-object v1, Leasypay/manager/PaytmAssist;->assistInstance:Leasypay/manager/PaytmAssist;

    .line 557
    :cond_2
    sget-object v0, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 558
    sput-object v1, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_3
    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 563
    :goto_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data0"    # Ljava/lang/String;
    .param p3, "data1"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 598
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 599
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.CUSTOM_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v1, "eventName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v1, "data0"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v1, "data1"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 605
    return-void
.end method

.method public setAppSMSCallback(Ljava/lang/String;)V
    .locals 1
    .param p1, "otpSms"    # Ljava/lang/String;

    .line 483
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAppCallback:Leasypay/listeners/AppCallbacks;

    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0, p1}, Leasypay/listeners/AppCallbacks;->smsReceivedCallback(Ljava/lang/String;)V

    .line 486
    :cond_0
    return-void
.end method

.method public setAppVersionTest(Ljava/lang/String;)V
    .locals 2
    .param p1, "appVersionTest"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->appVersionTest:Ljava/lang/String;

    .line 125
    return-void
.end method

.method setAssistEngineTerminatedStatus(Z)V
    .locals 0
    .param p1, "assistEngineTerminated"    # Z

    .line 102
    iput-boolean p1, p0, Leasypay/manager/PaytmAssist;->isAssistEngineTerminated:Z

    .line 103
    return-void
.end method

.method public setAssistLoader()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Leasypay/manager/PaytmAssist;->isShowNbLoader:Z

    return v0
.end method

.method public setBankInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bankName"    # Ljava/lang/String;
    .param p2, "paytype"    # Ljava/lang/String;
    .param p3, "cardScheme"    # Ljava/lang/String;

    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 643
    :cond_0
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->bankName:Ljava/lang/String;

    .line 644
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->payType:Ljava/lang/String;

    .line 645
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->cardScheme:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    if-eqz v0, :cond_3

    .line 647
    iget-object v1, p0, Leasypay/manager/PaytmAssist;->payType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leasypay/actions/GAEventManager;->cardType(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual {v0, p3}, Leasypay/actions/GAEventManager;->cardIssuer(Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "cardDet":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leasypay/manager/PaytmAssist;->cardDetails:Ljava/lang/String;

    .line 651
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 652
    const-string v1, "ATM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "idebit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "atm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    :cond_1
    iget-object v1, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Leasypay/actions/GAEventManager;->onNonOTPRequest(Z)V

    .line 657
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 658
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "bnkCode"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    const-string v2, "payType"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v2, "cardScheme"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Leasypay/manager/PaytmAssist;->fetchAPIByAppVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 668
    .end local v0    # "cardDet":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_0
    return-void
.end method

.method public setFragment(Leasypay/actions/EasypayBrowserFragment;)V
    .locals 0
    .param p1, "fragment"    # Leasypay/actions/EasypayBrowserFragment;

    .line 612
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->fragment:Leasypay/actions/EasypayBrowserFragment;

    .line 613
    return-void
.end method

.method public setFragmentPaused(Z)V
    .locals 0
    .param p1, "fragmentStopped"    # Z

    .line 144
    iput-boolean p1, p0, Leasypay/manager/PaytmAssist;->isFragmentStopped:Z

    .line 145
    return-void
.end method

.method public setFragmentResumed(Z)V
    .locals 0
    .param p1, "fragmentResumed"    # Z

    .line 134
    iput-boolean p1, p0, Leasypay/manager/PaytmAssist;->isFragmentResumed:Z

    .line 135
    return-void
.end method

.method setLastLoadedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastLoadedUrl"    # Ljava/lang/String;

    .line 239
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->lastLoadedUrl:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setLoaderVisibility(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 290
    iput-boolean p1, p0, Leasypay/manager/PaytmAssist;->isShowNbLoader:Z

    .line 291
    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->mid:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setPaymentWebClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "webClient"    # Landroid/webkit/WebViewClient;

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->paymentWebClient:Landroid/webkit/WebViewClient;

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Leasypay/manager/PaytmAssist;->webClientInstance:Leasypay/manager/EasypayWebViewClient;

    iput-object v0, p0, Leasypay/manager/PaytmAssist;->paymentWebClient:Landroid/webkit/WebViewClient;

    .line 273
    :goto_0
    invoke-direct {p0}, Leasypay/manager/PaytmAssist;->configureWebClient()V

    .line 274
    return-void
.end method

.method public setToolbarText(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 625
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lpaytm/assist/easypay/easypay/R$layout;->easy_pay_toolbar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 626
    .local v0, "toolbarView":Landroid/view/View;
    sget v1, Lpaytm/assist/easypay/easypay/R$id;->easy_pay_toolbar_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 627
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    .line 629
    .local v2, "toolBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 631
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 635
    :cond_0
    return-void
.end method

.method public setTxnBank(Ljava/lang/String;)V
    .locals 1
    .param p1, "mBankName"    # Ljava/lang/String;

    .line 739
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->bankName:Ljava/lang/String;

    .line 742
    :cond_0
    return-void
.end method

.method public setTxnPayType(Ljava/lang/String;)V
    .locals 1
    .param p1, "mTxnPayType"    # Ljava/lang/String;

    .line 744
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->payType:Ljava/lang/String;

    .line 747
    :cond_0
    return-void
.end method

.method public setmAnalyticsExtraParam(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "mAnalyticsExtraParam"    # Ljava/lang/StringBuilder;

    .line 297
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    .line 298
    return-void
.end method

.method public setmAnalyticsManager(Leasypay/actions/GAEventManager;)V
    .locals 0
    .param p1, "mAnalyticsManager"    # Leasypay/actions/GAEventManager;

    .line 620
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    .line 621
    return-void
.end method

.method protected setmWcListListener(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Leasypay/listeners/WebClientListener;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "mWcListListener":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leasypay/listeners/WebClientListener;>;"
    iput-object p1, p0, Leasypay/manager/PaytmAssist;->mWcListListener:Ljava/util/ArrayList;

    .line 283
    return-void
.end method

.method public startAssist()V
    .locals 0

    .line 433
    invoke-direct {p0}, Leasypay/manager/PaytmAssist;->accessCheckApi()V

    .line 434
    return-void
.end method

.method public startConfigAssist(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/webkit/WebView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "configContext"    # Landroid/content/Context;
    .param p2, "isEasyActive"    # Ljava/lang/Boolean;
    .param p3, "isEasyEnabled"    # Ljava/lang/Boolean;
    .param p4, "viewID"    # Ljava/lang/Integer;
    .param p5, "webView1"    # Landroid/webkit/WebView;
    .param p6, "activity"    # Landroid/app/Activity;
    .param p7, "orderID"    # Ljava/lang/String;
    .param p8, "mid"    # Ljava/lang/String;

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    sput-object p1, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;

    .line 304
    move-object v3, v2

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    iput-object v3, v0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 305
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Leasypay/manager/PaytmAssist;->isEasyPayActive:Z

    .line 306
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Leasypay/manager/PaytmAssist;->isEasyPayEnabled:Z

    .line 307
    move-object/from16 v3, p5

    invoke-direct {v0, v3}, Leasypay/manager/PaytmAssist;->setWebView(Landroid/webkit/WebView;)V

    .line 308
    invoke-static/range {p1 .. p1}, Leasypay/manager/PaytmAssist;->setContext(Landroid/content/Context;)V

    .line 309
    invoke-direct {v0, v1}, Leasypay/manager/PaytmAssist;->setFragmentViewId(Ljava/lang/Integer;)V

    .line 310
    move-object/from16 v4, p7

    iput-object v4, v0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    .line 311
    new-instance v5, Leasypay/actions/GAEventManager;

    invoke-direct {v5}, Leasypay/actions/GAEventManager;-><init>()V

    iput-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    .line 314
    const-string v6, "networkInfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    sget-object v5, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Leasypay/manager/PaytmAssist;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 316
    iget-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    sget-object v6, Leasypay/manager/PaytmAssist;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Leasypay/manager/PaytmAssist;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_0
    iget-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    const-string v6, "deviceInfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    const-string v7, "Security patchLevel:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v5, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-direct/range {p0 .. p0}, Leasypay/manager/PaytmAssist;->freeStorage()Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "freeStorage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 328
    const-string v5, "N/A"

    .line 331
    :cond_1
    iget-object v7, v0, Leasypay/manager/PaytmAssist;->mAnalyticsExtraParam:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v7, v0, Leasypay/manager/PaytmAssist;->mEventMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Leasypay/manager/PaytmAssist;->freeStorage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 335
    .local v6, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Leasypay/manager/PaytmAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    .line 336
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 337
    invoke-virtual {v7, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 338
    iget-object v7, v0, Leasypay/manager/PaytmAssist;->mEventMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "display"

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget v7, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 340
    .local v7, "mDensity":I
    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v10, v8

    int-to-double v12, v7

    div-double/2addr v10, v12

    .line 341
    .local v10, "mHeightInches":D
    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v12, v8

    int-to-double v14, v7

    div-double/2addr v12, v14

    .line 342
    .local v12, "mWidthInches":D
    iget-object v8, v0, Leasypay/manager/PaytmAssist;->mEventMap:Ljava/util/Map;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v14, "displayInInches"

    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iput-object v1, v0, Leasypay/manager/PaytmAssist;->fragmentViewId:Ljava/lang/Integer;

    .line 344
    move-object/from16 v8, p8

    iput-object v8, v0, Leasypay/manager/PaytmAssist;->mid:Ljava/lang/String;

    .line 345
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Leasypay/manager/PaytmAssist;->mWcListListener:Ljava/util/ArrayList;

    .line 346
    invoke-direct {v0, v2}, Leasypay/manager/PaytmAssist;->setWebClientInstance(Landroid/app/Activity;)V

    .line 347
    iget-object v9, v0, Leasypay/manager/PaytmAssist;->webView:Landroid/webkit/WebView;

    iget-object v14, v0, Leasypay/manager/PaytmAssist;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v15, "Android"

    invoke-virtual {v9, v14, v15}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v9, v0, Leasypay/manager/PaytmAssist;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v9}, Leasypay/manager/PaytmAssist;->setOrderId(Ljava/lang/String;)V

    .line 349
    iget-object v9, v0, Leasypay/manager/PaytmAssist;->mid:Ljava/lang/String;

    invoke-virtual {v0, v9}, Leasypay/manager/PaytmAssist;->setMid(Ljava/lang/String;)V

    .line 350
    invoke-direct/range {p0 .. p0}, Leasypay/manager/PaytmAssist;->setEasyPayHelper()V

    .line 352
    iget-object v9, v0, Leasypay/manager/PaytmAssist;->mAnalyticsManager:Leasypay/actions/GAEventManager;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v9, v14}, Leasypay/actions/GAEventManager;->isAssitEnabled(Z)V

    .line 354
    const/4 v9, 0x1

    return v9
.end method
