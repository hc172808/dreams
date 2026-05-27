.class public Lcom/payu/custombrowser/Bank;
.super Lcom/payu/custombrowser/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/Bank$a;
    }
.end annotation


# static fields
.field public static Version:Ljava/lang/String;

.field static a:Ljava/lang/String;

.field private static au:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field public static keyAnalytics:Ljava/lang/String;


# instance fields
.field private aA:Z

.field private aB:Lcom/payu/custombrowser/Bank$a;

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Landroid/os/CountDownTimer;

.field private aG:Landroid/os/CountDownTimer;

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:Z

.field private aL:Z

.field private aM:Z

.field private aN:Landroid/app/AlertDialog;

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Ljava/lang/String;

.field private av:Landroid/os/CountDownTimer;

.field private aw:Z

.field private ax:Z

.field private ay:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

.field private az:Z

.field d:Ljava/lang/Runnable;

.field public snoozeClickedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 118
    const-string v0, "7.5.1"

    sput-object v0, Lcom/payu/custombrowser/Bank;->Version:Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/payu/custombrowser/Bank;->au:Ljava/util/List;

    .line 127
    sput-object v0, Lcom/payu/custombrowser/Bank;->Version:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 192
    invoke-direct {p0}, Lcom/payu/custombrowser/b;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->av:Landroid/os/CountDownTimer;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aw:Z

    .line 141
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->ax:Z

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->az:Z

    .line 151
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aA:Z

    .line 155
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->aC:Z

    .line 176
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->aH:Z

    .line 180
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aJ:Z

    .line 181
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aK:Z

    .line 183
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aL:Z

    .line 185
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aM:Z

    .line 187
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->aO:Z

    .line 188
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aP:Z

    .line 196
    new-instance v1, Lcom/payu/custombrowser/Bank$a;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$a;-><init>(Lcom/payu/custombrowser/Bank;)V

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;

    .line 197
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aE:Z

    .line 198
    new-instance v0, Lcom/payu/custombrowser/custombar/a;

    invoke-direct {v0}, Lcom/payu/custombrowser/custombar/a;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->ap:Lcom/payu/custombrowser/custombar/a;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->S:Ljava/util/Set;

    .line 200
    new-instance v0, Lcom/payu/custombrowser/util/c;

    invoke-direct {v0}, Lcom/payu/custombrowser/util/c;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    .line 201
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->U:Ljava/util/concurrent/Executor;

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->T:Ljava/util/Set;

    .line 203
    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->aR:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/payu/custombrowser/Bank;Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/Bank;->c(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 3639
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->aM:Z

    .line 3640
    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/Bank;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/payu/custombrowser/Bank;->ax:Z

    return p0
.end method

.method static synthetic a(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->aC:Z

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 3676
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3677
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 3678
    add-int/lit8 v1, v1, 0x1

    .line 3679
    nop

    .line 3680
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_0

    .line 3681
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3682
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    move-object v5, v2

    move-object v2, p2

    move-object p2, v5

    goto :goto_1

    .line 3684
    :cond_0
    nop

    .line 3685
    const-string v2, ""

    .line 3687
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3688
    move-object p2, v2

    goto :goto_0

    .line 3691
    :cond_1
    goto :goto_2

    .line 3689
    :catch_0
    move-exception p1

    .line 3690
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3692
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/payu/custombrowser/Bank;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/payu/custombrowser/Bank;->aJ:Z

    return p0
.end method

.method static synthetic b(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->aE:Z

    return p1
.end method

.method private c(Landroid/view/View;)V
    .locals 9

    .line 3551
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    const-string v2, "-1"

    if-ne v0, v1, :cond_0

    .line 3552
    iget v0, p0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    .line 3553
    const-string v0, "snooze_interaction_time"

    invoke-virtual {p0, v0, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3554
    const-string v0, "snooze_window_action"

    const-string v1, "snooze_retry_click"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3556
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payu/custombrowser/R$id;->button_retry_anyway:I

    if-ne v0, v1, :cond_1

    .line 3557
    iget v0, p0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    .line 3558
    const-string v0, "snooze_txn_paused_user_interaction_time"

    invoke-virtual {p0, v0, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    const-string v0, "snooze_txn_paused_window_action"

    const-string v1, "retry_anyway_click"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->setTransactionStatusReceived(Z)V

    .line 3566
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3567
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "https://secure.payu.in/_payment"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https://secure.payu.in/_seamless_payment"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3568
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->reloadWebView()V

    goto/16 :goto_1

    .line 3570
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    invoke-virtual {v0}, Lcom/payu/custombrowser/util/c;->b()V

    .line 3571
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://mobiletest.payu.in/_payment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isS2SHtmlSupport:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    .line 3572
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->surePayS2SPayUId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3574
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v7

    const-string v3, "sure_pay_cancelled"

    const-string v5, ""

    const-string v8, ""

    invoke-static/range {v2 .. v8}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->markPreviousTxnAsUserCanceled(Ljava/lang/String;)V

    .line 3576
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 3577
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/payu/custombrowser/Bank;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3578
    :cond_6
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 3579
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 3586
    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    .line 3588
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/payu/custombrowser/R$id;->button_retry_anyway:I

    if-ne p1, v0, :cond_a

    .line 3590
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->killSnoozeService()V

    .line 3592
    iget-object p1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 3593
    if-eqz p1, :cond_8

    .line 3594
    sget v0, Lcom/payu/custombrowser/util/b;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3596
    :cond_8
    goto :goto_2

    .line 3601
    :cond_9
    iget-object p1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "No internet connection"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3603
    :cond_a
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/payu/custombrowser/Bank;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/payu/custombrowser/Bank;->aC:Z

    return p0
.end method

.method static synthetic c(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->aA:Z

    return p1
.end method

.method static synthetic d(Lcom/payu/custombrowser/Bank;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/payu/custombrowser/Bank;->aE:Z

    return p0
.end method

.method static synthetic d(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->aP:Z

    return p1
.end method

.method static synthetic e(Lcom/payu/custombrowser/Bank;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/payu/custombrowser/Bank;->aQ:Z

    return p0
.end method

.method static synthetic e(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->aw:Z

    return p1
.end method

.method static synthetic f(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank$a;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;

    return-object p0
.end method

.method static synthetic f(Lcom/payu/custombrowser/Bank;Z)Z
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->ax:Z

    return p1
.end method

.method static synthetic g(Lcom/payu/custombrowser/Bank;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->p()V

    return-void
.end method

.method static synthetic h(Lcom/payu/custombrowser/Bank;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/payu/custombrowser/Bank;->aP:Z

    return p0
.end method

.method static synthetic i(Lcom/payu/custombrowser/Bank;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/payu/custombrowser/Bank;->aH:Z

    return p0
.end method

.method public static isUrlWhiteListed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "currentUrl"    # Ljava/lang/String;

    .line 268
    const-string v0, "https://secure.payu.in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "https://mobiletest.payu.in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "_response"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    return v1

    .line 272
    :cond_1
    sget-object v0, Lcom/payu/custombrowser/Bank;->au:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    return v1

    .line 276
    :cond_2
    goto :goto_0

    .line 277
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j(Lcom/payu/custombrowser/Bank;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->v()V

    return-void
.end method

.method static synthetic k(Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/payu/custombrowser/Bank;->ay:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    return-object p0
.end method

.method static synthetic l(Lcom/payu/custombrowser/Bank;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/payu/custombrowser/Bank;->aO:Z

    return p0
.end method

.method private o()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/payu/custombrowser/Bank$1;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$1;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 247
    new-instance v1, Lcom/payu/custombrowser/Bank$12;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$12;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 256
    return-void
.end method

.method private p()V
    .locals 4

    .line 418
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->al:Z

    const-string v1, "javascript:"

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->B:Z

    if-eqz v0, :cond_1

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->al:Z

    .line 420
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/Bank;->requestPermissions([Ljava/lang/String;I)V

    .line 422
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->am:Z

    goto :goto_1

    .line 424
    :cond_0
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->ak:Z

    .line 425
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->ao:Z

    if-eqz v0, :cond_2

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 428
    :catch_1
    move-exception v0

    .line 430
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 433
    :goto_0
    goto :goto_1

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 440
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->ao:Z

    if-eqz v0, :cond_2

    .line 442
    :try_start_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 445
    :catch_2
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 443
    :catch_3
    move-exception v0

    .line 444
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 452
    :cond_2
    :goto_1
    return-void
.end method

.method private q()V
    .locals 3

    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->setIsPageStoppedForcefully(Z)V

    .line 512
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    if-eqz v0, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->v()V

    .line 516
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/util/c;->a(Lcom/payu/custombrowser/util/SnoozeConfigMap;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/Bank;->at:I

    .line 517
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V

    .line 519
    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .line 628
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "snoozeEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSurePay()I

    move-result v0

    iget v1, p0, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    if-le v0, v1, :cond_1

    .line 631
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aw:Z

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->v()V

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->u()V

    .line 637
    :cond_1
    return-void
.end method

.method private s()V
    .locals 3

    .line 840
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->setIsPageStoppedForcefully(Z)V

    .line 843
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->H:Z

    if-nez v0, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->v()V

    .line 847
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/util/c;->a(Lcom/payu/custombrowser/util/SnoozeConfigMap;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/Bank;->at:I

    .line 848
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V

    .line 850
    :cond_0
    return-void
.end method

.method private t()V
    .locals 7

    .line 1077
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->aF:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->aG:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1082
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1085
    :cond_1
    new-instance v0, Lcom/payu/custombrowser/Bank$36;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/payu/custombrowser/Bank$36;-><init>(Lcom/payu/custombrowser/Bank;JJ)V

    .line 1095
    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank$36;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->aF:Landroid/os/CountDownTimer;

    .line 1096
    return-void
.end method

.method private u()V
    .locals 7

    .line 2628
    new-instance v6, Lcom/payu/custombrowser/Bank$19;

    iget v0, p0, Lcom/payu/custombrowser/Bank;->snoozeUrlLoadingTimeout:I

    int-to-long v2, v0

    const-wide/16 v4, 0x1f4

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/payu/custombrowser/Bank$19;-><init>(Lcom/payu/custombrowser/Bank;JJ)V

    iput-object v6, p0, Lcom/payu/custombrowser/Bank;->av:Landroid/os/CountDownTimer;

    .line 2648
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2649
    return-void
.end method

.method private v()V
    .locals 2

    .line 2657
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->av:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2658
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->aw:Z

    .line 2659
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->av:Landroid/os/CountDownTimer;

    .line 2662
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 2006
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->o:Ljava/util/ArrayList;

    const-string v1, "CUSTOM_BROWSER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 2008
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    const-string v1, "cb_status"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 37

    .line 2239
    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/payu/custombrowser/Bank;->aK:Z

    if-eqz v0, :cond_0

    return-void

    .line 2246
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->m()V

    .line 2248
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    const-string v14, "payment_initiated"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "CUSTOM_BROWSER"

    if-eqz v0, :cond_1

    .line 2249
    iput-object v13, v15, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 2250
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2251
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    const-string v1, "cb_status"

    invoke-virtual {v15, v1, v0}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    :cond_1
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2255
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->ap:Lcom/payu/custombrowser/custombar/a;

    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/custombar/a;->b(Landroid/view/View;)V

    .line 2261
    :cond_2
    const/4 v12, 0x1

    iput-boolean v12, v15, Lcom/payu/custombrowser/Bank;->ai:Z

    .line 2262
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 2264
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    .line 2265
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2267
    :cond_3
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    if-nez v0, :cond_4

    .line 2268
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$layout;->wait_for_otp:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    .line 2271
    :cond_4
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->approve:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    .line 2272
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->Regenerate_layout_gone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2273
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->Enter_manually_gone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2274
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->pin_layout_gone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2275
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2276
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->bank_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2277
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->timer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    .line 2278
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    .line 2279
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->waiting:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2280
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v2, Lcom/payu/custombrowser/R$id;->pin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2281
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v12, Lcom/payu/custombrowser/R$id;->retry:I

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 2282
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v11, Lcom/payu/custombrowser/R$id;->enter_manually_button:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2283
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    move-object/from16 v18, v13

    sget v13, Lcom/payu/custombrowser/R$id;->enter_manually:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 2284
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    move-object/from16 v19, v14

    sget v14, Lcom/payu/custombrowser/R$id;->retry_text:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 2285
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    move-object/from16 v20, v0

    sget v0, Lcom/payu/custombrowser/R$id;->text_or:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2286
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    move-object/from16 v21, v1

    sget v1, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2287
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v15, Lcom/payu/custombrowser/R$id;->otp_recieved:I

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 2288
    move-object/from16 v22, v13

    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 2289
    const v0, 0x3e99999a    # 0.3f

    invoke-static {v0, v10}, Lcom/payu/custombrowser/util/c;->a(FLandroid/view/View;)V

    .line 2290
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2291
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2292
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2295
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2296
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2297
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2298
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2299
    const/16 v13, 0x8

    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2301
    const/16 v13, 0x8

    invoke-virtual {v15, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2302
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2303
    move-object/from16 v13, v22

    move-object/from16 v22, v15

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2304
    move-object/from16 v23, v4

    move-object/from16 v4, v21

    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2305
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2306
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2307
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 2308
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v13

    move-object/from16 v13, v20

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2307
    :cond_5
    move-object/from16 v21, v13

    .line 2309
    :goto_0
    new-instance v0, Lcom/payu/custombrowser/Bank$15;

    invoke-direct {v0, v15, v5, v10}, Lcom/payu/custombrowser/Bank$15;-><init>(Lcom/payu/custombrowser/Bank;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2337
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2338
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->ap:Lcom/payu/custombrowser/custombar/a;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/custombar/a;->a(Landroid/view/View;)V

    .line 2339
    :cond_6
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2340
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    iget-object v13, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2343
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    const/4 v13, 0x2

    if-eqz v0, :cond_7

    .line 2344
    iput v13, v15, Lcom/payu/custombrowser/Bank;->y:I

    goto :goto_1

    .line 2346
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->f()V

    .line 2349
    :goto_1
    iget v0, v15, Lcom/payu/custombrowser/Bank;->y:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_8

    .line 2350
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 2351
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->J:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2355
    :cond_8
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v13, p1

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2356
    sget v13, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    invoke-virtual {v15, v13}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    sget v13, Lcom/payu/custombrowser/R$string;->cb_regenerate:I

    invoke-virtual {v15, v13}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_2

    :cond_9
    const/4 v13, 0x0

    .line 2357
    :goto_2
    move-object/from16 v25, v1

    :try_start_1
    sget v1, Lcom/payu/custombrowser/R$string;->cb_skip_screen:I

    invoke-virtual {v15, v1}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lcom/payu/custombrowser/R$string;->cb_skip_screen:I

    invoke-virtual {v15, v1}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    .line 2358
    :goto_3
    move-object/from16 v26, v11

    :try_start_2
    sget v11, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v15, v11}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    sget v11, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {v15, v11}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 2360
    :goto_4
    if-eqz v1, :cond_f

    .line 2362
    :try_start_3
    iget-object v1, v15, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v1, :cond_e

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2364
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2365
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2366
    if-eqz v13, :cond_c

    .line 2367
    :try_start_4
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2368
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2369
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    const/4 v11, 0x0

    goto :goto_6

    .line 2371
    :cond_c
    if-eqz v0, :cond_d

    .line 2372
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v1, 0x8

    goto :goto_5

    .line 2374
    :cond_d
    const/16 v1, 0x8

    :try_start_5
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2376
    :goto_5
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2377
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2380
    :goto_6
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2381
    invoke-virtual {v10, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2382
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2383
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2384
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2385
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v11, v26

    :try_start_6
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2386
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    invoke-virtual {v15, v0}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    goto :goto_7

    .line 2362
    :cond_e
    move-object/from16 v11, v26

    goto :goto_7

    .line 2458
    :catch_0
    move-exception v0

    move-object/from16 v11, v26

    goto/16 :goto_a

    .line 2389
    :cond_f
    move-object/from16 v11, v26

    if-nez v13, :cond_10

    if-nez v0, :cond_10

    iget-boolean v0, v15, Lcom/payu/custombrowser/Bank;->ak:Z

    if-eqz v0, :cond_11

    .line 2391
    :cond_10
    const-string v0, ""

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2392
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v15, Lcom/payu/custombrowser/Bank;->ag:Ljava/util/Timer;

    .line 2393
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->ag:Ljava/util/Timer;

    new-instance v1, Lcom/payu/custombrowser/Bank$16;

    invoke-direct {v1, v15}, Lcom/payu/custombrowser/Bank$16;-><init>(Lcom/payu/custombrowser/Bank;)V

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x3e8

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    invoke-virtual/range {v26 .. v31}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 2404
    :cond_11
    :goto_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_14

    .line 2406
    iget-boolean v0, v15, Lcom/payu/custombrowser/Bank;->ak:Z

    if-nez v0, :cond_13

    .line 2411
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2412
    iget-object v0, v15, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    sget v1, Lcom/payu/custombrowser/R$id;->linear_layout_waiting_for_otp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2413
    iget-boolean v0, v15, Lcom/payu/custombrowser/Bank;->aO:Z

    if-eqz v0, :cond_12

    .line 2414
    const/4 v13, 0x2

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v1, 0x1

    goto :goto_8

    .line 2416
    :cond_12
    const/4 v13, 0x2

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 2418
    :goto_8
    invoke-virtual {v15, v5}, Lcom/payu/custombrowser/Bank;->a(Landroid/view/View;)V

    .line 2419
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2420
    invoke-virtual {v10, v13}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 2421
    const/16 v13, 0x8

    :try_start_7
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2422
    move-object/from16 v1, v25

    :try_start_8
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 2423
    const/4 v13, 0x0

    :try_start_9
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 2424
    const/16 v13, 0x8

    :try_start_a
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 2426
    new-instance v0, Lcom/payu/custombrowser/Bank$17;

    invoke-direct {v0, v15, v5, v10}, Lcom/payu/custombrowser/Bank$17;-><init>(Lcom/payu/custombrowser/Bank;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_9

    .line 2458
    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v1, v25

    goto :goto_c

    .line 2406
    :cond_13
    move-object/from16 v1, v25

    const/16 v13, 0x8

    goto :goto_9

    .line 2404
    :cond_14
    move-object/from16 v1, v25

    const/16 v13, 0x8

    .line 2460
    :goto_9
    goto :goto_d

    .line 2458
    :catch_3
    move-exception v0

    move-object/from16 v1, v25

    move-object/from16 v11, v26

    goto :goto_b

    :catch_4
    move-exception v0

    :goto_a
    move-object/from16 v1, v25

    goto :goto_b

    :catch_5
    move-exception v0

    :goto_b
    const/16 v13, 0x8

    .line 2459
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2463
    :goto_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v0, v13, :cond_15

    iget-boolean v0, v15, Lcom/payu/custombrowser/Bank;->ak:Z

    if-nez v0, :cond_15

    .line 2464
    const/16 v0, 0x2d

    goto :goto_e

    .line 2466
    :cond_15
    const/16 v0, 0x1e

    .line 2469
    :goto_e
    new-instance v13, Lcom/payu/custombrowser/Bank$18;

    move-object/from16 v16, v4

    const/16 v24, 0x1

    move-object v4, v1

    move-object v1, v13

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move-object/from16 v26, v3

    move v3, v0

    move-object/from16 v32, v4

    move-object/from16 v4, v23

    move-object/from16 v23, v5

    move-object/from16 v5, p1

    move-object/from16 p1, v6

    move-object/from16 v6, v16

    move-object/from16 v27, v10

    move-object/from16 v10, v21

    move-object/from16 v21, v12

    move-object v12, v14

    move-object v0, v13

    move-object/from16 v33, v18

    move-object/from16 v13, p1

    move-object/from16 v34, v14

    move-object/from16 v35, v19

    move-object/from16 v14, v27

    move-object/from16 v36, v22

    move-object/from16 v15, v26

    move-object/from16 v16, v23

    move-object/from16 v17, v25

    move-object/from16 v18, v21

    invoke-direct/range {v1 .. v18}, Lcom/payu/custombrowser/Bank$18;-><init>(Lcom/payu/custombrowser/Bank;ILandroid/widget/TextView;Ljava/lang/String;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->d:Ljava/lang/Runnable;

    .line 2547
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 2548
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, v1, Lcom/payu/custombrowser/Bank;->ag:Ljava/util/Timer;

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 2549
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    sget v2, Lcom/payu/custombrowser/R$id;->timer:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2550
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    move-object/from16 v3, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    move-object/from16 v3, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2551
    :cond_16
    const-string v0, "received_otp_direct"

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 2552
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    const-string v3, "otp_received"

    invoke-virtual {v1, v3, v0}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    :cond_17
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    move-object/from16 v3, v23

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2556
    sget v0, Lcom/payu/custombrowser/R$string;->cb_approve_otp:I

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v27

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2557
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 2558
    iget-boolean v0, v1, Lcom/payu/custombrowser/Bank;->autoApprove:Z

    if-eqz v0, :cond_18

    .line 2559
    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    .line 2560
    const-string v0, "auto_approve"

    iput-object v0, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 2561
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    const-string v6, "user_input"

    invoke-virtual {v1, v6, v0}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    :cond_18
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Lcom/payu/custombrowser/util/c;->a(FLandroid/view/View;)V

    .line 2567
    move-object/from16 v6, v36

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2569
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->ap:Lcom/payu/custombrowser/custombar/a;

    move-object/from16 v6, v32

    invoke-virtual {v0, v6}, Lcom/payu/custombrowser/custombar/a;->c(Landroid/view/View;)V

    .line 2570
    move-object/from16 v6, v34

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2571
    move-object/from16 v6, p1

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2573
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 2575
    move-object/from16 v6, v26

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2576
    iget-boolean v0, v1, Lcom/payu/custombrowser/Bank;->aO:Z

    if-eqz v0, :cond_19

    .line 2577
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_f

    .line 2579
    :cond_19
    const/4 v2, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 2581
    :goto_f
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2582
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;

    iget-object v3, v1, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/payu/custombrowser/Bank$a;->a(Landroid/view/View;)V

    .line 2583
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->aB:Lcom/payu/custombrowser/Bank$a;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    .line 2547
    :cond_1a
    const/4 v2, 0x2

    .line 2586
    :goto_10
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/Bank;->updateHeight(Landroid/view/View;)V

    .line 2587
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->N:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/Bank;->addReviewOrder(Landroid/view/View;)V

    .line 2588
    iget-object v0, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2589
    iput v2, v1, Lcom/payu/custombrowser/Bank;->y:I

    goto :goto_11

    .line 2591
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->f()V

    .line 2594
    :goto_11
    return-void
.end method

.method public addReviewOrder(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3643
    sget v0, Lcom/payu/custombrowser/R$id;->t_payu_review_option:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->setReviewOrderButtonProperty(Landroid/widget/TextView;)V

    .line 3644
    return-void
.end method

.method b(Ljava/lang/String;)I
    .locals 1

    .line 2604
    sget v0, Lcom/payu/custombrowser/R$string;->cb_pin:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2605
    const/4 p1, 0x3

    return p1

    .line 2606
    :cond_0
    sget v0, Lcom/payu/custombrowser/R$string;->cb_password:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2607
    const/4 p1, 0x1

    return p1

    .line 2608
    :cond_1
    sget v0, Lcom/payu/custombrowser/R$string;->cb_enter_manually:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2609
    const/4 p1, 0x4

    return p1

    .line 2610
    :cond_2
    sget v0, Lcom/payu/custombrowser/R$string;->cb_approve_otp:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2611
    const/4 p1, 0x5

    return p1

    .line 2612
    :cond_3
    sget v0, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/payu/custombrowser/R$string;->cb_use_sms_otp:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 2614
    :cond_4
    sget v0, Lcom/payu/custombrowser/R$string;->cb_sms_otp:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2615
    const/4 p1, 0x7

    return p1

    .line 2616
    :cond_5
    sget v0, Lcom/payu/custombrowser/R$string;->cb_regenerate_otp:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2617
    const/4 p1, 0x2

    return p1

    .line 2619
    :cond_6
    const/4 p1, 0x0

    return p1

    .line 2613
    :cond_7
    :goto_0
    const/4 p1, 0x6

    return p1
.end method

.method b()V
    .locals 1

    .line 3696
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->aN:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3697
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->aN:Landroid/app/AlertDialog;

    .line 3700
    :cond_0
    return-void
.end method

.method public bankFound(Ljava/lang/String;)V
    .locals 4
    .param p1, "bank"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1365
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aD:Z

    if-nez v0, :cond_0

    .line 1366
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->checkStatusFromJS(Ljava/lang/String;)V

    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aD:Z

    .line 1370
    :cond_0
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->c(Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1374
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$6;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$6;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1383
    :cond_1
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->C:Ljava/lang/String;

    .line 1384
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->an:Z

    if-nez v0, :cond_5

    .line 1387
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1388
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$7;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$7;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1396
    :cond_2
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->ax:Z

    if-nez v0, :cond_4

    .line 1397
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "{}"

    const-string v2, "loading"

    if-nez v0, :cond_3

    .line 1398
    :try_start_1
    invoke-virtual {p0, v2, v1}, Lcom/payu/custombrowser/Bank;->convertToNative(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 1403
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$id;->help_view:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1404
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    if-eq v3, v0, :cond_4

    .line 1405
    invoke-virtual {p0, v2, v1}, Lcom/payu/custombrowser/Bank;->convertToNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1412
    :cond_4
    :goto_0
    goto :goto_1

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1416
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aA:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_6

    .line 1420
    new-instance v0, Lcom/payu/custombrowser/Bank$8;

    invoke-direct {v0, p0, p1}, Lcom/payu/custombrowser/Bank$8;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    .line 1468
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->U:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1471
    :cond_6
    return-void
.end method

.method public bindService()V
    .locals 4

    .line 3030
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3031
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3032
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    const-class v2, Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3035
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const-string v2, "cb_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3037
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->A:Ljava/lang/String;

    const-string v2, "currentUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3039
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantCheckoutActivityPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "merchantCheckoutActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3040
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3041
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    const-string v2, "s2sRetryUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3043
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isSnoozeServiceBounded:Z

    .line 3044
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3047
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3048
    return-void
.end method

.method public cacheAnalytics(Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1521
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1522
    const-string v1, "inputFields"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1524
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->listOfTxtFld:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1525
    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->listOfTxtFld:Ljava/lang/String;

    goto :goto_0

    .line 1528
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->listOfTxtFld:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->listOfTxtFld:Ljava/lang/String;

    .line 1531
    :goto_0
    const-string v1, "hostName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    goto :goto_1

    .line 1534
    :catch_0
    move-exception v0

    .line 1537
    :goto_1
    return-void
.end method

.method public convertToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1554
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->n:Z

    const-string v1, "-1"

    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 1557
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->killSnoozeService()V

    .line 1558
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->cancelTransactionNotification()V

    .line 1563
    const-string v0, "snooze_window_action"

    const-string v2, "snooze_window_dismissed_by_cb"

    invoke-virtual {p0, v0, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v0, "snooze_window_automatically_disappear_time"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1570
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v2, Lcom/payu/custombrowser/Bank$11;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/Bank$11;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1579
    const-string v0, "departure"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iput-object v2, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1583
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->ae:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1584
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/payu/custombrowser/Bank$13;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1990
    :cond_3
    return-void
.end method

.method public dismissPayULoader()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3282
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->v:Lcom/payu/custombrowser/widgets/a;

    if-eqz v0, :cond_0

    .line 3283
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->v:Lcom/payu/custombrowser/widgets/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/a;->dismiss()V

    .line 3284
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->v:Lcom/payu/custombrowser/widgets/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/a;->cancel()V

    .line 3290
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aK:Z

    if-nez v0, :cond_0

    .line 3294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->forwardJourneyForChromeLoaderIsComplete:Z

    .line 3295
    const-string v0, "Setting forwardJourneyForChromeLoaderIsComplete = true"

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 3298
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->startSlowUserWarningTimer()V

    .line 3303
    :cond_0
    return-void
.end method

.method public dismissReviewOrder()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$33;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$33;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 961
    :cond_0
    return-void
.end method

.method protected dismissSlowUserWarningTimer()V
    .locals 1

    .line 3340
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3341
    const-string v0, "Shutting down slowUserCountDownTimer"

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 3342
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3344
    :cond_0
    return-void
.end method

.method public dismissSnoozeWindow()V
    .locals 1

    .line 3085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->n:Z

    .line 3086
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->showReviewOrderHorizontalBar()V

    .line 3089
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 3091
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 3094
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->showCbBlankOverlay(I)V

    .line 3096
    :cond_0
    return-void
.end method

.method public enableCatchAllJS(Z)V
    .locals 2
    .param p1, "enableCatchAllJS"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1505
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$10;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/Bank$10;-><init>(Lcom/payu/custombrowser/Bank;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1514
    :cond_0
    return-void
.end method

.method public fillOTPCallback(Z)V
    .locals 2
    .param p1, "otpFilled"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1475
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$9;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/Bank$9;-><init>(Lcom/payu/custombrowser/Bank;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1501
    :cond_0
    return-void
.end method

.method public fillOTPOnBankPage(Z)V
    .locals 5
    .param p1, "isAutoFillOTP"    # Z

    .line 2053
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->otp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->catchAllJSEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isOTPFilled:Z

    if-nez v0, :cond_0

    .line 2056
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2057
    const-string v1, "otp"

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->otp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2058
    const-string v1, "isAutoFillOTP"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2059
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->h:Lorg/json/JSONObject;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_fill_otp:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

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
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    goto :goto_0

    .line 2060
    :catch_0
    move-exception v0

    .line 2061
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2064
    :cond_0
    :goto_0
    return-void
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 408
    const-string v0, ""

    return-object v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getJSData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3746
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/payu/custombrowser/Bank;->getJSData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSData(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isPersistent"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3757
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public getSnoozeLoaderView()Lcom/payu/custombrowser/widgets/SnoozeLoaderView;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->ay:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    return-object v0
.end method

.method public getUserId()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$2;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1148
    :cond_0
    return-void
.end method

.method public isInBackWardJourney(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 864
    :try_start_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v0, :cond_4

    .line 865
    const-string v0, "https://secure.payu.in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "https://mobiletest.payu.in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "_response"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    return v1

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->S:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 869
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->S:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 870
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    return v1

    .line 873
    :cond_2
    goto :goto_0

    .line 874
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 877
    :cond_4
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 880
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    return v0
.end method

.method public isOTPKeyboardNumeric(Z)V
    .locals 0
    .param p1, "isOTPKeyboardNumeric"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3709
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->aO:Z

    .line 3710
    return-void
.end method

.method public killSnoozeService()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 340
    :cond_0
    return-void
.end method

.method public launchSnoozeWindow()V
    .locals 1

    .line 2668
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->launchSnoozeWindow(I)V

    .line 2669
    return-void
.end method

.method public launchSnoozeWindow(I)V
    .locals 23
    .param p1, "mode"    # I

    .line 2684
    move-object/from16 v11, p0

    move/from16 v12, p1

    iget v0, v11, Lcom/payu/custombrowser/Bank;->at:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 2686
    :cond_0
    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    iget v0, v11, Lcom/payu/custombrowser/Bank;->at:I

    if-ne v0, v13, :cond_1

    return-void

    .line 2688
    :cond_1
    const/4 v0, 0x1

    if-ne v12, v0, :cond_2

    iget v1, v11, Lcom/payu/custombrowser/Bank;->at:I

    if-ne v1, v0, :cond_2

    return-void

    .line 2691
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Lcom/payu/custombrowser/Bank;->showCbBlankOverlay(I)V

    .line 2697
    iget-boolean v2, v11, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v2, :cond_4

    .line 2698
    iget v2, v11, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    iget-object v3, v11, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSurePay()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-boolean v2, v11, Lcom/payu/custombrowser/Bank;->isS2SHtmlSupport:Z

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/payu/custombrowser/Bank;->surePayS2SPayUId:Ljava/lang/String;

    .line 2700
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v11, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2701
    :cond_3
    return-void

    .line 2703
    :cond_4
    iget v2, v11, Lcom/payu/custombrowser/Bank;->snoozeCount:I

    iget-object v3, v11, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSurePay()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-boolean v2, v11, Lcom/payu/custombrowser/Bank;->isS2SHtmlSupport:Z

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    .line 2705
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_4

    .line 2710
    :cond_5
    iput v12, v11, Lcom/payu/custombrowser/Bank;->snoozeMode:I

    .line 2711
    iget-object v2, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v2, :cond_a

    iget-object v2, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2713
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->dismissSlowUserWarning()V

    .line 2715
    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Lcom/payu/custombrowser/Bank;->a(ILjava/lang/String;)V

    .line 2717
    iput-boolean v0, v11, Lcom/payu/custombrowser/Bank;->n:Z

    .line 2719
    const-string v2, "snooze_window_status"

    const-string v3, "snooze_visible"

    invoke-virtual {v11, v2, v3}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    iget-object v2, v11, Lcom/payu/custombrowser/Bank;->A:Ljava/lang/String;

    const-string v3, "snooze_appear_url"

    invoke-virtual {v11, v3, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    if-ne v12, v0, :cond_6

    const-string v2, "Warn"

    goto :goto_0

    :cond_6
    const-string v2, "Fail"

    .line 2723
    :goto_0
    const-string v3, "snooze_window_launch_mode"

    invoke-virtual {v11, v3, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    const-string v2, "snooze_window_appear_time"

    const-string v3, "-1"

    invoke-virtual {v11, v2, v3}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iget-object v2, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2730
    sget v3, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 2732
    sget v2, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 2733
    sget v2, Lcom/payu/custombrowser/R$id;->text_view_transaction_snoozed_message1:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 2734
    sget v2, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 2735
    sget v2, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    .line 2736
    sget v2, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    .line 2737
    sget v2, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    .line 2738
    sget v2, Lcom/payu/custombrowser/R$id;->t_confirm:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    .line 2739
    sget v2, Lcom/payu/custombrowser/R$id;->t_nconfirm:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    .line 2740
    sget v2, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    .line 2741
    sget v2, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2742
    sget v13, Lcom/payu/custombrowser/R$id;->button_retry_anyway:I

    invoke-virtual {v14, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 2743
    sget v0, Lcom/payu/custombrowser/R$id;->snooze_loader_view:I

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    iput-object v0, v11, Lcom/payu/custombrowser/Bank;->ay:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    .line 2745
    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->setVisibility(I)V

    .line 2746
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2747
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2748
    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2749
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2750
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2751
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2752
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2753
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2754
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2755
    invoke-virtual {v13, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2758
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$string;->cb_slownetwork_status:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2759
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$string;->cb_try_later:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2760
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    sget v1, Lcom/payu/custombrowser/R$string;->cb_retry_restart:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2764
    iget-boolean v0, v11, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v11, Lcom/payu/custombrowser/Bank;->R:Z

    if-eqz v0, :cond_7

    .line 2766
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$string;->cb_slow_internet_confirmation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2767
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$string;->cb_receive_sms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2768
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$string;->cb_confirm_transaction:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2769
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2770
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2771
    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2772
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2773
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2774
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2775
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2776
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2777
    invoke-virtual {v13, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2779
    iget v0, v11, Lcom/payu/custombrowser/Bank;->snoozeVisibleCountBackwdJourney:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v11, Lcom/payu/custombrowser/Bank;->snoozeVisibleCountBackwdJourney:I

    .line 2781
    const-string v0, "snooze_backward_visible"

    const-string v1, "Y"

    invoke-virtual {v11, v0, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2784
    :cond_7
    iget v0, v11, Lcom/payu/custombrowser/Bank;->snoozeVisibleCountFwdJourney:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v11, Lcom/payu/custombrowser/Bank;->snoozeVisibleCountFwdJourney:I

    .line 2788
    :goto_1
    new-instance v1, Lcom/payu/custombrowser/Bank$20;

    move-object v0, v1

    move-object/from16 v16, v14

    move-object v14, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v18, v3

    move-object v3, v8

    move-object/from16 v19, v4

    move-object v4, v10

    move-object/from16 v20, v5

    move-object v5, v9

    move-object/from16 v21, v13

    move-object v13, v6

    move-object/from16 v6, v20

    move-object/from16 v22, v9

    move-object v9, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/payu/custombrowser/Bank$20;-><init>(Lcom/payu/custombrowser/Bank;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v2, v20

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2820
    new-instance v0, Lcom/payu/custombrowser/Bank$21;

    invoke-direct {v0, v11}, Lcom/payu/custombrowser/Bank$21;-><init>(Lcom/payu/custombrowser/Bank;)V

    move-object/from16 v2, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2831
    new-instance v0, Lcom/payu/custombrowser/Bank$22;

    invoke-direct {v0, v11, v12}, Lcom/payu/custombrowser/Bank$22;-><init>(Lcom/payu/custombrowser/Bank;I)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2856
    new-instance v0, Lcom/payu/custombrowser/Bank$24;

    invoke-direct {v0, v11}, Lcom/payu/custombrowser/Bank$24;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2900
    new-instance v14, Lcom/payu/custombrowser/Bank$25;

    move-object v0, v14

    move-object v2, v13

    move-object v3, v15

    move-object v5, v9

    move-object v6, v8

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v22

    move-object v13, v10

    move-object/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/payu/custombrowser/Bank$25;-><init>(Lcom/payu/custombrowser/Bank;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2961
    new-instance v0, Lcom/payu/custombrowser/Bank$26;

    invoke-direct {v0, v11}, Lcom/payu/custombrowser/Bank$26;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2975
    new-instance v0, Lcom/payu/custombrowser/Bank$27;

    invoke-direct {v0, v11}, Lcom/payu/custombrowser/Bank$27;-><init>(Lcom/payu/custombrowser/Bank;)V

    move-object/from16 v13, v21

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2985
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 2986
    :cond_9
    :goto_2
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, v11, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, v11, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    .line 2988
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2989
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2990
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    new-instance v2, Lcom/payu/custombrowser/Bank$28;

    invoke-direct {v2, v11}, Lcom/payu/custombrowser/Bank$28;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2996
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    new-instance v2, Lcom/payu/custombrowser/Bank$29;

    invoke-direct {v2, v11}, Lcom/payu/custombrowser/Bank$29;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3015
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->dismissReviewOrder()V

    .line 3016
    iget-object v0, v11, Lcom/payu/custombrowser/Bank;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 3017
    const/4 v0, 0x2

    if-ne v12, v0, :cond_a

    iget-boolean v0, v11, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v0, :cond_a

    .line 3018
    sput-boolean v1, Lcom/payu/custombrowser/Bank;->hasToStart:Z

    .line 3019
    invoke-virtual/range {p0 .. p0}, Lcom/payu/custombrowser/Bank;->bindService()V

    .line 3022
    :cond_a
    return-void

    .line 2706
    :cond_b
    :goto_4
    return-void
.end method

.method public logPayUAnalytics(Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3658
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3659
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 3660
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3661
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3663
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mAnalyticsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mAnalyticsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3664
    :cond_0
    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->mAnalyticsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3665
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3667
    :cond_1
    goto :goto_0

    .line 3670
    :cond_2
    goto :goto_1

    .line 3668
    :catch_0
    move-exception v0

    .line 3669
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3671
    :goto_1
    return-void
.end method

.method public nativeHelperForNB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/payu/custombrowser/Bank$3;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$4;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$4;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1340
    :cond_1
    return-void
.end method

.method public onCancel()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2203
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->onCancel(Ljava/lang/String;)V

    .line 2204
    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2212
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$14;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/Bank$14;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2225
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2117
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->E:Ljava/lang/String;

    .line 2118
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->l()V

    .line 2119
    return-void
.end method

.method public onLoadResourse(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 891
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const-string v0, "https://mwsrec.npci.org.in/MWS/Scripts/MerchantScript_v1.0.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://swasrec2.npci.org.in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://swasrec.npci.org.in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 897
    :cond_0
    return-void
.end method

.method public onOverrideURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 500
    :cond_0
    return-void
.end method

.method public onPageFinishWebclient(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aJ:Z

    .line 974
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->aM:Z

    if-eqz v1, :cond_0

    .line 978
    const-string v1, "snooze_resume_url"

    invoke-virtual {p0, v1, p1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-direct {p0, v0}, Lcom/payu/custombrowser/Bank;->a(Z)V

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "last_url"

    invoke-virtual {v1, v2, v4, v3}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->t()V

    .line 992
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->az:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mainLayout"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 994
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 995
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/payu/custombrowser/Bank$34;

    invoke-direct {v3, p0, v1}, Lcom/payu/custombrowser/Bank$34;-><init>(Lcom/payu/custombrowser/Bank;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1021
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->az:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1030
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->ax:Z

    if-nez v0, :cond_2

    .line 1031
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->v()V

    .line 1035
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payu/custombrowser/Bank$35;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$35;-><init>(Lcom/payu/custombrowser/Bank;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1052
    return-void
.end method

.method public onPageFinished()V
    .locals 6

    .line 2015
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 2016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->an:Z

    .line 2018
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->ah:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2019
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 2020
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->ah:Ljava/lang/Boolean;

    .line 2023
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->M:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2024
    iput v0, p0, Lcom/payu/custombrowser/Bank;->y:I

    .line 2025
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->f()V

    .line 2026
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 2029
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2032
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->ae:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->ax:Z

    if-nez v1, :cond_2

    .line 2034
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    sget v5, Lcom/payu/custombrowser/R$string;->cb_init:I

    invoke-virtual {p0, v5}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    goto :goto_0

    .line 2035
    :catch_0
    move-exception v1

    .line 2036
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2039
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 2040
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->aL:Z

    if-nez v1, :cond_3

    .line 2041
    const-string v1, ""

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/Bank;->checkStatusFromJS(Ljava/lang/String;I)V

    .line 2042
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aL:Z

    .line 2044
    :cond_3
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 2045
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2047
    :cond_4
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->fillOTPOnBankPage(Z)V

    .line 2050
    :cond_5
    return-void
.end method

.method public onPageStarted()V
    .locals 4

    .line 2083
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2084
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 2086
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->p:Z

    .line 2088
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2089
    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->an:Z

    .line 2090
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 2092
    :try_start_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->ae:Z

    if-eqz v0, :cond_1

    .line 2093
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->h:Lorg/json/JSONObject;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_detect_bank:I

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2099
    :cond_1
    goto :goto_0

    .line 2097
    :catch_0
    move-exception v0

    .line 2098
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2101
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2102
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->K:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2105
    :cond_3
    return-void
.end method

.method public onPageStartedWebclient(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .line 641
    const-string v0, "furl"

    const-string v1, "surl"

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->aJ:Z

    .line 643
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/payu/custombrowser/Bank;->ax:Z

    .line 648
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-eq v4, v5, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->aK:Z

    if-eqz v4, :cond_1

    .line 651
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->s()V

    .line 656
    :cond_1
    iput-boolean v3, p0, Lcom/payu/custombrowser/Bank;->aK:Z

    .line 659
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSlowUserWarning()V

    .line 662
    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->R:Z

    if-nez v4, :cond_6

    if-eqz p1, :cond_6

    sget-boolean v4, Lcom/payu/custombrowser/Bank;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 663
    const-string v4, "https://mobiletest.payu.in/_payment"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_2
    const-string v4, "https://secure.payu.in/_payment"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    sget-boolean v4, Lcom/payu/custombrowser/Bank;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 664
    const-string v4, "https://mobiletest.payu.in/_seamless_payment"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_4
    const-string v4, "https://secure.payu.in/_seamless_payment"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 665
    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->R:Z

    .line 668
    :cond_6
    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->aI:Z

    const/4 v5, 0x0

    if-nez v4, :cond_a

    .line 670
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getHtmlData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurepayS2Surl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    .line 671
    sget-object v4, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getPostData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getPostURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 672
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    sget-object v6, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v6}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getPostData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 673
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    sget-object v6, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v6}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getPostURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPostURL(Ljava/lang/String;)V

    .line 676
    sget-object v4, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setPostURL(Ljava/lang/String;)V

    .line 677
    sget-object v4, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setPostData(Ljava/lang/String;)V

    goto :goto_1

    .line 681
    :cond_7
    new-instance v0, Lcom/payu/custombrowser/util/f;

    const-string v1, "POST Data or POST URL Missing or wrong POST URL or HTML Data missing"

    invoke-direct {v0, v1}, Lcom/payu/custombrowser/util/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->isS2SHtmlSupport:Z

    if-nez v4, :cond_9

    .line 686
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/Bank;->checkIfTransactionNBType(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/payu/custombrowser/Bank;->isTxnNBType:Z

    .line 689
    :cond_9
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->aI:Z

    .line 692
    :cond_a
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->aH:Z

    .line 694
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    const-string v6, ""

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 696
    const-string v4, "departure"

    const-string v7, "-1"

    invoke-virtual {p0, v4, v7}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iput-object v6, p0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 700
    :cond_b
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 701
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v7, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "s:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "last_url"

    invoke-virtual {v4, v7, v9, v8}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_c

    .line 705
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 709
    :cond_c
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->aF:Landroid/os/CountDownTimer;

    if-eqz v4, :cond_d

    .line 710
    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 713
    :cond_d
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_e

    .line 714
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 715
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 718
    :cond_e
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->isInBackWardJourney(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    .line 724
    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->forwardJourneyForChromeLoaderIsComplete:Z

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v4, :cond_10

    .line 725
    :cond_f
    invoke-virtual {p0, v3, p1}, Lcom/payu/custombrowser/Bank;->a(ILjava/lang/String;)V

    .line 734
    :cond_10
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_2

    :cond_11
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_12
    :goto_2
    move-object v4, p1

    :goto_3
    iput-object v4, p0, Lcom/payu/custombrowser/Bank;->A:Ljava/lang/String;

    .line 738
    sget-object v4, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 742
    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v4, :cond_14

    .line 744
    iget-boolean v4, p0, Lcom/payu/custombrowser/Bank;->isTxnNBType:Z

    if-eqz v4, :cond_13

    .line 745
    iput-boolean v3, p0, Lcom/payu/custombrowser/Bank;->n:Z

    goto :goto_4

    .line 747
    :cond_13
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 763
    :cond_14
    :goto_4
    sget-boolean v4, Lcom/payu/custombrowser/Bank;->DEBUG:Z

    if-eqz v4, :cond_15

    const-string v4, "https://mobiletest.payu.in/_payment_options"

    goto :goto_5

    :cond_15
    const-string v4, "https://secure.payu.in/_payment_options"

    :goto_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 764
    iput-object v5, p0, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    .line 766
    iput-object v5, p0, Lcom/payu/custombrowser/Bank;->q:Landroid/graphics/drawable/Drawable;

    .line 770
    :cond_16
    :try_start_0
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v4, :cond_1d

    .line 771
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v7, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v7}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "UTF-8"

    if-nez v4, :cond_17

    :try_start_1
    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v8, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 772
    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_17
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 773
    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v4, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 774
    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 775
    :cond_18
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->isRetryURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isS2SHtmlSupport:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->isRetryURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 777
    :cond_1a
    iput-boolean v3, p0, Lcom/payu/custombrowser/Bank;->aH:Z

    .line 778
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 779
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->i()V

    .line 780
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->isRetryURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 782
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->resetAutoSelectOTP()V

    .line 784
    iput-object v5, p0, Lcom/payu/custombrowser/Bank;->backupOfOTP:Ljava/lang/String;

    .line 785
    iput-object v5, p0, Lcom/payu/custombrowser/Bank;->af:Ljava/lang/String;

    .line 786
    iput-boolean v3, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    .line 788
    :cond_1b
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->v()V

    .line 790
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_1d

    .line 793
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    goto :goto_6

    .line 800
    :cond_1c
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSnoozeEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayMode()I

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 803
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v0, :cond_1d

    .line 804
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    invoke-virtual {v0, p1}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->getPercentageAndTimeout(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->aq:[I

    .line 805
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->aq:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/payu/custombrowser/Bank;->snoozeUrlLoadingPercentage:I

    .line 806
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->aq:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/payu/custombrowser/Bank;->snoozeUrlLoadingTimeout:I

    .line 807
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    invoke-virtual {v0, v1, p1}, Lcom/payu/custombrowser/util/c;->a(Lcom/payu/custombrowser/util/SnoozeConfigMap;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/Bank;->at:I

    .line 812
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->r()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 819
    :cond_1d
    :goto_6
    goto :goto_7

    .line 817
    :catch_0
    move-exception v0

    .line 818
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 827
    :cond_1e
    :goto_7
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 207
    invoke-super {p0}, Lcom/payu/custombrowser/b;->onPause()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aQ:Z

    .line 209
    return-void
.end method

.method public onPayuFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2131
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2136
    const-string v0, "failure_transaction"

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 2137
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    const-string v1, "trxn_status"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->F:Ljava/lang/Boolean;

    .line 2139
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->D:Ljava/lang/String;

    .line 2142
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->cancelTransactionNotification()V

    .line 2143
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->k()V

    .line 2144
    return-void
.end method

.method public onPayuSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2168
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 2172
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->F:Ljava/lang/Boolean;

    .line 2175
    const-string v0, "success_transaction"

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    .line 2176
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->m:Ljava/lang/String;

    const-string v1, "trxn_status"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->D:Ljava/lang/String;

    .line 2180
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->cancelTransactionNotification()V

    .line 2181
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->k()V

    .line 2182
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 4
    .param p1, "progress"    # I

    .line 594
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 599
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 600
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 602
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 603
    new-instance v1, Lcom/payu/custombrowser/Bank$32;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$32;-><init>(Lcom/payu/custombrowser/Bank;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/Bank;->a(I)V

    .line 620
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedErrorWebClient(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    const-string v1, "ERROR_RECEIVED"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/Bank;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->h()V

    .line 539
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->x:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 544
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aK:Z

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 548
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 552
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-nez v1, :cond_3

    .line 553
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->q()V

    goto :goto_2

    .line 554
    :cond_3
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isTxnNBType:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/payu/custombrowser/Bank;->snoozeCountBackwardJourney:I

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSurePay()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 555
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 556
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->q()V

    .line 559
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 560
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 562
    iget v1, p0, Lcom/payu/custombrowser/Bank;->u:I

    if-eqz v1, :cond_5

    .line 563
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->f()V

    .line 564
    iput v0, p0, Lcom/payu/custombrowser/Bank;->y:I

    .line 566
    :cond_5
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->i()V

    .line 567
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->H:Z

    if-nez v0, :cond_6

    .line 568
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_6
    goto :goto_3

    .line 573
    :catch_0
    move-exception v0

    .line 574
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    :goto_3
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v1, "SSL_ERROR"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/Bank;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->h()V

    .line 526
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 213
    invoke-super {p0}, Lcom/payu/custombrowser/b;->onStart()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aQ:Z

    .line 215
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->aR:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->aR:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->aR:Ljava/lang/String;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->o()V

    .line 221
    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2153
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/Bank;->onSuccess(Ljava/lang/String;)V

    .line 2154
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2193
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->E:Ljava/lang/String;

    .line 2194
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->l()V

    .line 2195
    return-void
.end method

.method public reInit()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1347
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    new-instance v1, Lcom/payu/custombrowser/Bank$5;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$5;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1355
    :cond_0
    return-void
.end method

.method public reloadWVNative()V
    .locals 1

    .line 3537
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 3538
    return-void
.end method

.method public reloadWVUsingJS()V
    .locals 2

    .line 3530
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    const-string v1, "javascript:window.location.reload(true)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3531
    return-void
.end method

.method public reloadWVUsingJSFromCache()V
    .locals 2

    .line 3544
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    const-string v1, "javascript:window.location.reload()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3545
    return-void
.end method

.method public reloadWebView()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->n:Z

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->registerSMSBroadcast()V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isWebviewReloading:Z

    .line 356
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isSnoozeEnabled:Z

    if-eqz v1, :cond_2

    .line 357
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->r()V

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 360
    invoke-direct {p0, v0}, Lcom/payu/custombrowser/Bank;->a(Z)V

    .line 362
    const/16 v0, 0x13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_3

    .line 363
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->reloadWVNative()V

    .line 368
    :cond_4
    :goto_0
    return-void
.end method

.method public reloadWebView(Ljava/lang/String;)V
    .locals 2
    .param p1, "resumeUrl"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->n:Z

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->registerSMSBroadcast()V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isWebviewReloading:Z

    .line 384
    iget-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isSnoozeEnabled:Z

    if-eqz v1, :cond_2

    .line 385
    invoke-direct {p0}, Lcom/payu/custombrowser/Bank;->r()V

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 389
    invoke-direct {p0, v0}, Lcom/payu/custombrowser/Bank;->a(Z)V

    .line 391
    const/16 v0, 0x13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_3

    .line 392
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->reloadWVUsingJS()V

    goto :goto_0

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/Bank;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void
.end method

.method public reloadWebView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postParams"    # Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->forwardJourneyForChromeLoaderIsComplete:Z

    .line 303
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/Bank;->isWebviewReloading:Z

    .line 306
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->registerSMSBroadcast()V

    .line 307
    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->backwardJourneyStarted:Z

    .line 308
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 311
    :cond_0
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->n:Z

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->v:Lcom/payu/custombrowser/widgets/a;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->v:Lcom/payu/custombrowser/widgets/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/a;->dismiss()V

    .line 317
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->v:Lcom/payu/custombrowser/widgets/a;

    .line 320
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_4

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 323
    :cond_4
    invoke-direct {p0, v1}, Lcom/payu/custombrowser/Bank;->a(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->resetAutoSelectOTP()V

    .line 327
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    invoke-virtual {v1}, Lcom/payu/custombrowser/util/c;->c()V

    .line 328
    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->surePayS2SPayUId:Ljava/lang/String;

    .line 329
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 330
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 331
    :cond_5
    if-eqz p1, :cond_6

    .line 332
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 334
    :cond_6
    :goto_0
    return-void
.end method

.method public removeJSData(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3780
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/payu/custombrowser/Bank;->removeJSData(Ljava/lang/String;Z)V

    .line 3781
    return-void
.end method

.method public removeJSData(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isPersistent"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3767
    if-eqz p2, :cond_0

    .line 3768
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/payu/custombrowser/util/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3770
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/payu/custombrowser/util/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 3772
    :goto_0
    return-void
.end method

.method public setIsPageStoppedForcefully(Z)V
    .locals 0
    .param p1, "isPageStoppedForcefully"    # Z

    .line 3227
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->ax:Z

    .line 3228
    return-void
.end method

.method public setJSData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3735
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/payu/custombrowser/Bank;->setJSData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3736
    return-void
.end method

.method public setJSData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isPersistent"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3721
    if-eqz p3, :cond_0

    .line 3722
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/payu/custombrowser/util/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3724
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/payu/custombrowser/util/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3726
    :goto_0
    return-void
.end method

.method public setSnoozeConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "snoozeConfig"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3269
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/payu/custombrowser/util/c;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/custombrowser/util/SnoozeConfigMap;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    .line 3270
    return-void
.end method

.method public setSnoozeEnabled(Z)V
    .locals 3
    .param p1, "snoozeEnabled"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1057
    if-nez p1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setEnableSurePay(I)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "snoozeEnabled"

    invoke-virtual {v0, v2, p1, v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1066
    return-void
.end method

.method public setSnoozeLoaderView(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V
    .locals 0
    .param p1, "snoozeLoaderView"    # Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    .line 287
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->ay:Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    .line 288
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1158
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aC:Z

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/payu/custombrowser/util/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/Bank;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/util/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 1175
    :cond_1
    :goto_0
    return-void
.end method

.method public showBackButtonDialog()V
    .locals 3

    .line 3167
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    sget v2, Lcom/payu/custombrowser/R$style;->cb_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3170
    const-string v1, "Do you really want to cancel the transaction ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3171
    new-instance v1, Lcom/payu/custombrowser/Bank$30;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$30;-><init>(Lcom/payu/custombrowser/Bank;)V

    const-string v2, "Ok"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3195
    new-instance v1, Lcom/payu/custombrowser/Bank$31;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/Bank$31;-><init>(Lcom/payu/custombrowser/Bank;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3206
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3207
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 3209
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->aN:Landroid/app/AlertDialog;

    .line 3211
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3212
    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->aN:Landroid/app/AlertDialog;

    .line 3217
    :cond_1
    return-void
.end method

.method public showCustomBrowser(Z)V
    .locals 2
    .param p1, "showCustomBrowser"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 461
    iput-boolean p1, p0, Lcom/payu/custombrowser/Bank;->ae:Z

    .line 462
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/payu/custombrowser/Bank$23;

    invoke-direct {v1, p0, p1}, Lcom/payu/custombrowser/Bank$23;-><init>(Lcom/payu/custombrowser/Bank;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    :cond_0
    return-void
.end method

.method public showJSRequestedToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1995
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->aQ:Z

    if-eqz v0, :cond_0

    .line 1996
    iput-object p1, p0, Lcom/payu/custombrowser/Bank;->aR:Ljava/lang/String;

    goto :goto_0

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2000
    :goto_0
    return-void
.end method

.method public showReviewOrder(Z)V
    .locals 2
    .param p1, "isShowReviewOrder"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 902
    iget-boolean v0, p0, Lcom/payu/custombrowser/Bank;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableReviewOrder()I

    move-result v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-nez v0, :cond_0

    .line 903
    if-nez p1, :cond_0

    .line 904
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setEnableReviewOrder(I)V

    .line 905
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->X:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 906
    invoke-virtual {p0}, Lcom/payu/custombrowser/Bank;->dismissReviewOrder()V

    .line 909
    :cond_0
    return-void
.end method

.method public spResumedWindowTTL(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttl"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 3627
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/Bank;->as:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3630
    goto :goto_0

    .line 3628
    :catch_0
    move-exception v0

    .line 3629
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3631
    :goto_0
    return-void
.end method

.method protected startSlowUserWarningTimer()V
    .locals 1

    .line 3312
    const-string v0, "Attempting to start slowUserCountDownTimer"

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 3314
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 3315
    const-string v0, "Starting slowUserCountDownTimer"

    invoke-static {v0}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 3334
    :cond_0
    return-void
.end method

.method public startSnoozeServiceVerifyPayment(Ljava/lang/String;)V
    .locals 4
    .param p1, "verifyParam"    # Ljava/lang/String;

    .line 3054
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3055
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3056
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    const-class v2, Lcom/payu/custombrowser/services/SnoozeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3058
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const-string v2, "cb_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3059
    const-string v1, "verificationMsgReceived"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3060
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantCheckoutActivityPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "merchantCheckoutActivity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3061
    const-string v1, "verify_add_param"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3062
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->surePayS2SPayUId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3063
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->surePayS2SPayUId:Ljava/lang/String;

    const-string v3, "PAYUID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3066
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->merchantKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3067
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->merchantKey:Ljava/lang/String;

    const-string v3, "merchantKey"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3068
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->txnId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3069
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->txnId:Ljava/lang/String;

    const-string v3, "txnid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3071
    :cond_2
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->isSnoozeServiceBounded:Z

    .line 3072
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    iget-object v3, p0, Lcom/payu/custombrowser/Bank;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3073
    iput-boolean v2, p0, Lcom/payu/custombrowser/Bank;->isSnoozeBroadCastReceiverRegistered:Z

    .line 3077
    iget-object v1, p0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3078
    return-void
.end method

.method public surePayData(Ljava/lang/String;)V
    .locals 8
    .param p1, "jsonData"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 921
    const-string v0, "txnId"

    const-string v1, "merchantKey"

    const-string v2, "txnType"

    const-string v3, "snoozeCount"

    const-string v4, "replayUrl"

    const-string v5, "cookiePayuId"

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 923
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/payu/custombrowser/Bank;->surePayS2SPayUId:Ljava/lang/String;

    .line 925
    :cond_0
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 926
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 927
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 928
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 930
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/payu/custombrowser/Bank;->surePayS2Surl:Ljava/lang/String;

    .line 931
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/Bank;->merchantKey:Ljava/lang/String;

    .line 932
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->txnId:Ljava/lang/String;

    .line 933
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/Bank;->txnType:Ljava/lang/String;

    .line 934
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->txnType:Ljava/lang/String;

    const-string v1, "NB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isTxnNBType:Z

    .line 935
    iget-object v0, p0, Lcom/payu/custombrowser/Bank;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setEnableSurePay(I)V

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/Bank;->isSurePayValueLoaded:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :cond_1
    goto :goto_0

    .line 938
    :catch_0
    move-exception v0

    .line 939
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 941
    :goto_0
    return-void
.end method
