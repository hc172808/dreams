.class public Lcom/payu/custombrowser/services/SnoozeService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/services/SnoozeService$b;,
        Lcom/payu/custombrowser/services/SnoozeService$a;
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:J

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

.field private M:Ljava/lang/String;

.field private N:Lcom/payu/custombrowser/util/c;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/Runnable;

.field a:Ljava/lang/String;

.field private c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Landroid/os/IBinder;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;

.field private l:Landroid/os/Handler;

.field private m:Landroid/os/HandlerThread;

.field private n:Landroid/os/CountDownTimer;

.field private o:Landroid/os/Looper;

.field private p:Lcom/payu/custombrowser/services/SnoozeService$a;

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    const v0, 0x1b7740

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->c:I

    .line 62
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->d:I

    .line 65
    const-string v0, "webview_status_action"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->e:Ljava/lang/String;

    .line 66
    const-string v0, "snooze_broad_cast_message"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->f:Ljava/lang/String;

    .line 68
    const-string v0, "currentUrl"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->g:Ljava/lang/String;

    .line 70
    const-string v0, "s2sRetryUrl"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->h:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/payu/custombrowser/services/SnoozeService$b;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/services/SnoozeService$b;-><init>(Lcom/payu/custombrowser/services/SnoozeService;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->i:Landroid/os/IBinder;

    .line 73
    const-string v0, "merchantCheckoutActivity"

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->a:Ljava/lang/String;

    .line 93
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->s:I

    .line 95
    const v0, 0xea60

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->t:I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->v:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->w:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->x:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->y:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->z:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->A:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->B:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->E:Z

    .line 125
    sget-boolean v0, Lcom/payu/custombrowser/Bank;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "https://mobiletest.payu.in/merchant/postservice?form=2"

    goto :goto_0

    :cond_0
    const-string v0, "https://info.payu.in/merchant/postservice?form=2"

    :goto_0
    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->K:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->P:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->Q:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/payu/custombrowser/services/SnoozeService$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/services/SnoozeService$1;-><init>(Lcom/payu/custombrowser/services/SnoozeService;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->R:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->H:Z

    return p0
.end method

.method static synthetic C(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->M:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic E(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/payu/custombrowser/services/SnoozeService;->c()V

    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;I)I
    .locals 1

    .line 54
    iget v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->s:I

    return v0
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;J)J
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->n:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->l:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->K:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->M:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "webview_status_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    const-string v1, "BROAD_CAST_FROM_SNOOZE_SERVICE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    const-string v1, "event_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string p1, "event_value"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 578
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 840
    new-instance v0, Landroid/content/Intent;

    const-string v1, "webview_status_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    const-string v1, "broadcast_from_service_update_ui"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 842
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string p1, "value"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    iget-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->y:Ljava/lang/String;

    const-string p2, "currentUrl"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    iget-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->z:Ljava/lang/String;

    const-string p2, "s2sRetryUrl"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    iget-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const-string p2, "cb_config"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 847
    const-string p1, "is_forward_journey"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 848
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 849
    return-void
.end method

.method private a(Z)V
    .locals 6

    .line 482
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationGoodNetworkTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 484
    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationGoodNetWorkHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 485
    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 486
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 487
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 488
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 490
    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationGoodNetWorkHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationGoodNetWorkBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    .line 489
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 495
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/payu/custombrowser/R$color;->cb_blue_button:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/payu/custombrowser/R$color;->cb_blue_button:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 500
    :goto_0
    iput-boolean v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->G:Z

    .line 502
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 503
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService;->y:Ljava/lang/String;

    const-string v4, "currentUrl"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService;->z:Ljava/lang/String;

    const-string v5, "s2sRetryUrl"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v3, "sender"

    const-string v5, "snoozeService"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    nop

    .line 507
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 509
    iput-boolean v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->H:Z

    .line 510
    const/high16 p1, 0x20000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 511
    iget-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->y:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    iget-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const-string v4, "cb_config"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v4, Lcom/payu/custombrowser/CBActivity;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p1, 0x1

    goto :goto_2

    .line 517
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 518
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, ""

    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 520
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string p1, "post_type"

    const-string v4, "sure_pay_payment_data"

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object p1

    const-string v4, "postData"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    goto :goto_1

    .line 525
    :cond_3
    const/4 p1, 0x0

    .line 527
    :goto_1
    const-string v4, "snooze_notification_expected_action"

    const-string v5, "merchant_checkout_page"

    invoke-direct {p0, v4, v5}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iput-boolean v3, p0, Lcom/payu/custombrowser/services/SnoozeService;->H:Z

    .line 533
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 539
    :goto_2
    if-eqz p1, :cond_4

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 546
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 554
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/services/SnoozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 555
    sget v1, Lcom/payu/custombrowser/util/b;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 559
    const-string p1, "good_network_notification_launched"

    const-string v0, "true"

    invoke-direct {p0, p1, v0, v2}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 563
    goto :goto_4

    .line 561
    :catch_0
    move-exception p1

    goto :goto_3

    .line 540
    :cond_4
    new-instance p1, Landroid/content/ActivityNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not found, Please set valid activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_3
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 564
    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/services/SnoozeService;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->D:Z

    return p1
.end method

.method static synthetic b()I
    .locals 1

    .line 54
    sget v0, Lcom/payu/custombrowser/services/SnoozeService;->b:I

    return v0
.end method

.method static synthetic b(Lcom/payu/custombrowser/services/SnoozeService;J)J
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->u:J

    return-wide p1
.end method

.method static synthetic b(Lcom/payu/custombrowser/services/SnoozeService;)Lcom/payu/custombrowser/util/c;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->N:Lcom/payu/custombrowser/util/c;

    return-object p0
.end method

.method static synthetic b(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/services/SnoozeService;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/payu/custombrowser/services/SnoozeService;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/services/SnoozeService;->a(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    .line 210
    const-string v0, "transaction_not_verified_notification"

    const-string v1, "backward_journey_status"

    const-string v2, "transaction_not_verified_dialog_foreground"

    const-string v3, "-1"

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_0
    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService;->N:Lcom/payu/custombrowser/util/c;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v7}, Lcom/payu/custombrowser/services/SnoozeService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    sget v7, Lcom/payu/custombrowser/CBActivity;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "1"

    if-ne v7, v5, :cond_1

    .line 212
    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    const-string v6, "transaction_verified_notification"

    invoke-direct {p0, v6, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/services/SnoozeService;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 219
    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    const-string v6, "transaction_verified_dialog_foreground"

    invoke-direct {p0, v6, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_1
    invoke-direct {p0, v1, p1, v4}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    :goto_2
    goto :goto_3

    .line 229
    :catch_0
    move-exception v6

    .line 230
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 231
    sget v6, Lcom/payu/custombrowser/CBActivity;->b:I

    if-ne v6, v5, :cond_3

    .line 232
    invoke-direct {p0, v0, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/services/SnoozeService;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 236
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, v1, p1, v4}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 243
    :goto_3
    return-void
.end method

.method static synthetic c(Lcom/payu/custombrowser/services/SnoozeService;J)J
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->r:J

    return-wide p1
.end method

.method static synthetic c(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->P:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 348
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->o:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->j:Landroid/os/Handler;

    .line 349
    new-instance v0, Lcom/payu/custombrowser/services/SnoozeService$2;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/services/SnoozeService$2;-><init>(Lcom/payu/custombrowser/services/SnoozeService;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->k:Ljava/lang/Runnable;

    .line 357
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->j:Landroid/os/Handler;

    iget v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->s:I

    iget v3, p0, Lcom/payu/custombrowser/services/SnoozeService;->t:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

.method static synthetic c(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/services/SnoozeService;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .line 586
    const-string v0, ""

    const-string v1, "1"

    :try_start_0
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->N:Lcom/payu/custombrowser/util/c;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/services/SnoozeService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    const-string v3, "snooze_verify_api_response_received"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "\n\n"

    if-eqz v4, :cond_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v6}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationTransactionVerifiedHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationTransactionVerifiedBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v6}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationTransactionNotVerifiedHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationTransactionNotVerifiedBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 605
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationTransactionVerifiedTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v5}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationTransactionNotVerifiedTitle()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 606
    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationTransactionVerifiedHeader()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationTransactionNotVerifiedHeader()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 607
    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 608
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 609
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v5, 0x2

    .line 610
    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 611
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 613
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 614
    const-string v4, "cb_config"

    iget-object v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 615
    iput-boolean v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->G:Z

    .line 617
    const-string v4, "payu_response"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    nop

    .line 619
    iget-boolean v4, p0, Lcom/payu/custombrowser/services/SnoozeService;->F:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 620
    const/high16 v0, 0x30000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 622
    iput-boolean v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->H:Z

    .line 624
    const-string v0, "sender"

    const-string v4, "snoozeService"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v0, "verificationMsgReceived"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v4, Lcom/payu/custombrowser/CBActivity;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_5

    .line 628
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 629
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v7

    :goto_3
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 631
    const-string v0, "postData"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v0, "post_type"

    const-string v4, "verify_response_post_data"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 635
    :cond_5
    const/4 v2, 0x0

    .line 637
    :goto_4
    const-string v0, "snooze_notification_expected_action"

    const-string v4, "merchant_checkout_page"

    invoke-direct {p0, v0, v4}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iput-boolean v5, p0, Lcom/payu/custombrowser/services/SnoozeService;->H:Z

    .line 640
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 645
    :goto_5
    if-eqz v2, :cond_6

    .line 648
    const/high16 v0, 0x8000000

    :try_start_2
    invoke-static {p0, v5, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 651
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 657
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/services/SnoozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 658
    sget v1, Lcom/payu/custombrowser/util/b;->TRANSACTION_STATUS_NOTIFICATION_ID:I

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 661
    const-string v0, "good_network_notification_launched"

    invoke-direct {p0, v0, p1, v5}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 665
    goto :goto_7

    .line 663
    :catch_0
    move-exception p1

    goto :goto_6

    .line 646
    :cond_6
    new-instance p1, Landroid/content/ActivityNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not found, Please set valid activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 664
    :goto_6
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 669
    :goto_7
    goto :goto_8

    .line 666
    :catch_1
    move-exception p1

    .line 668
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    :goto_8
    return-void
.end method

.method static synthetic c(Lcom/payu/custombrowser/services/SnoozeService;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->E:Z

    return p1
.end method

.method static synthetic d(Lcom/payu/custombrowser/services/SnoozeService;J)J
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->I:J

    return-wide p1
.end method

.method static synthetic d(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->Q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->v:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 8

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->D:Z

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/payu/custombrowser/util/b;->SNOOZE_IMAGE_DOWNLOAD_END_POINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/payu/custombrowser/util/b;->SNOOZE_IMAGE_COLLECTIONS:[Ljava/lang/String;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    new-instance v7, Lcom/payu/custombrowser/services/SnoozeService$3;

    sget v1, Lcom/payu/custombrowser/services/SnoozeService;->b:I

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/payu/custombrowser/services/SnoozeService$3;-><init>(Lcom/payu/custombrowser/services/SnoozeService;JJ)V

    .line 378
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 381
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/payu/custombrowser/services/SnoozeService$4;

    invoke-direct {v2, p0, v0, v7}, Lcom/payu/custombrowser/services/SnoozeService$4;-><init>(Lcom/payu/custombrowser/services/SnoozeService;Ljava/lang/String;Landroid/os/CountDownTimer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 469
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 470
    return-void
.end method

.method static synthetic d(Lcom/payu/custombrowser/services/SnoozeService;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->F:Z

    return p1
.end method

.method static synthetic e(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->x:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 678
    const-string v0, "snooze_notification_expected_action"

    const-string v1, "merchant_checkout_page"

    invoke-direct {p0, v0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationPoorNetWorkTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 682
    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationPoorNetWorkHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 683
    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 684
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 685
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 686
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 688
    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationPoorNetWorkHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationPoorNetWorkBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    .line 687
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 691
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$color;->cb_blue_button:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$color;->cb_blue_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 698
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 699
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 701
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 702
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const-string v2, "post_type"

    const-string v4, "sure_pay_payment_data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    const-string v4, "postData"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const/high16 v2, 0x8000000

    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 711
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 717
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/services/SnoozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 718
    sget v2, Lcom/payu/custombrowser/util/b;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 719
    goto :goto_1

    .line 721
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found, Please set valid activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 726
    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->O:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->E:Z

    return p0
.end method

.method static synthetic j(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/payu/custombrowser/services/SnoozeService;->d()V

    return-void
.end method

.method static synthetic k(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->D:Z

    return p0
.end method

.method static synthetic l(Lcom/payu/custombrowser/services/SnoozeService;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->r:J

    return-wide v0
.end method

.method static synthetic m(Lcom/payu/custombrowser/services/SnoozeService;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->q:J

    return-wide v0
.end method

.method static synthetic n(Lcom/payu/custombrowser/services/SnoozeService;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->u:J

    return-wide v0
.end method

.method static synthetic o(Lcom/payu/custombrowser/services/SnoozeService;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->s:I

    return p0
.end method

.method static synthetic p(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic q(Lcom/payu/custombrowser/services/SnoozeService;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->t:I

    return p0
.end method

.method static synthetic r(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic s(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->J:Z

    return p0
.end method

.method static synthetic t(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->R:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic u(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->F:Z

    return p0
.end method

.method static synthetic v(Lcom/payu/custombrowser/services/SnoozeService;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->c:I

    return p0
.end method

.method static synthetic w(Lcom/payu/custombrowser/services/SnoozeService;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->G:Z

    return p0
.end method

.method static synthetic x(Lcom/payu/custombrowser/services/SnoozeService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/payu/custombrowser/services/SnoozeService;->e()V

    return-void
.end method

.method static synthetic y(Lcom/payu/custombrowser/services/SnoozeService;)Landroid/os/CountDownTimer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->n:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic z(Lcom/payu/custombrowser/services/SnoozeService;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/payu/custombrowser/services/SnoozeService;->w:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->E:Z

    .line 325
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->n:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->n:Landroid/os/CountDownTimer;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 330
    invoke-virtual {p0}, Lcom/payu/custombrowser/services/SnoozeService;->stopSelf()V

    .line 331
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/payu/custombrowser/services/SnoozeService;->w:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->F:Z

    .line 251
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->i:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 309
    nop

    .line 310
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SnoozeServiceHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->m:Landroid/os/HandlerThread;

    .line 311
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 314
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->o:Landroid/os/Looper;

    .line 315
    new-instance v0, Lcom/payu/custombrowser/services/SnoozeService$a;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->o:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/payu/custombrowser/services/SnoozeService$a;-><init>(Lcom/payu/custombrowser/services/SnoozeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->p:Lcom/payu/custombrowser/services/SnoozeService$a;

    .line 316
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 258
    new-instance v0, Lcom/payu/custombrowser/util/c;

    invoke-direct {v0}, Lcom/payu/custombrowser/util/c;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->N:Lcom/payu/custombrowser/util/c;

    .line 261
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->C:Ljava/lang/String;

    .line 262
    const-string v0, "cb_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 263
    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayBackgroundTTL()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->c:I

    .line 264
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->N:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/c;->c(Ljava/lang/String;)Ljava/util/HashMap;

    .line 265
    sget v0, Lcom/payu/custombrowser/Bank;->snoozeImageDownloadTimeout:I

    if-lez v0, :cond_0

    sget v0, Lcom/payu/custombrowser/Bank;->snoozeImageDownloadTimeout:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    :goto_0
    sput v0, Lcom/payu/custombrowser/services/SnoozeService;->b:I

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "verificationMsgReceived"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->J:Z

    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "verify_add_param"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->O:Ljava/lang/String;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->x:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->L:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    .line 276
    const-string v0, "merchantKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->A:Ljava/lang/String;

    .line 277
    const-string v0, "txnid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->B:Ljava/lang/String;

    .line 278
    const-string v0, "PAYUID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->P:Ljava/lang/String;

    .line 280
    goto :goto_1

    .line 281
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->J:Z

    .line 283
    const-string v0, "currentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->y:Ljava/lang/String;

    .line 284
    const-string v0, "s2sRetryUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->z:Ljava/lang/String;

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/services/SnoozeService;->p:Lcom/payu/custombrowser/services/SnoozeService$a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 291
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 292
    iget-object v1, p0, Lcom/payu/custombrowser/services/SnoozeService;->p:Lcom/payu/custombrowser/services/SnoozeService$a;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/services/SnoozeService$a;->sendMessage(Landroid/os/Message;)Z

    .line 294
    sget-boolean v0, Lcom/payu/custombrowser/Bank;->hasToStart:Z

    if-eqz v0, :cond_3

    .line 295
    const/4 v0, 0x3

    return v0

    .line 298
    :cond_3
    const/4 v0, 0x2

    return v0
.end method
