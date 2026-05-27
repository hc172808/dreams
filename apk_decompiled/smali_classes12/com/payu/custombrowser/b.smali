.class public abstract Lcom/payu/custombrowser/b;
.super Lcom/payu/custombrowser/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/b$a;
    }
.end annotation


# static fields
.field private static a:Z

.field public static hasToStart:Z

.field public static snoozeImageDownloadTimeout:I


# instance fields
.field protected SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

.field Z:Landroid/view/View;

.field aa:Z

.field ab:Landroid/content/Intent;

.field ac:Z

.field ad:I

.field ae:Z

.field af:Ljava/lang/String;

.field ag:Ljava/util/Timer;

.field ah:Ljava/lang/Boolean;

.field ai:Z

.field aj:Ljava/lang/String;

.field ak:Z

.field al:Z

.field am:Z

.field an:Z

.field ao:Z

.field ap:Lcom/payu/custombrowser/custombar/a;

.field aq:[I

.field ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

.field as:I

.field at:I

.field private b:Ljava/lang/String;

.field protected isRetryNowPressed:Z

.field public isS2SHtmlSupport:Z

.field protected isSnoozeBroadCastReceiverRegistered:Z

.field protected isSnoozeEnabled:Z

.field protected isSnoozeServiceBounded:Z

.field protected mAnalyticsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected slowUserCountDownTimer:Landroid/os/CountDownTimer;

.field protected slowUserWarningDialog:Landroid/app/AlertDialog;

.field protected snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field protected snoozeCount:I

.field protected snoozeCountBackwardJourney:I

.field protected snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

.field protected snoozeServiceConnection:Landroid/content/ServiceConnection;

.field protected snoozeUrlLoadingPercentage:I

.field protected snoozeUrlLoadingTimeout:I

.field protected snoozeVisibleCountBackwdJourney:I

.field protected snoozeVisibleCountFwdJourney:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/payu/custombrowser/b;->hasToStart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/payu/custombrowser/a;-><init>()V

    .line 73
    const-string v0, "webview_status_action"

    iput-object v0, p0, Lcom/payu/custombrowser/b;->SNOOZE_GET_WEBVIEW_STATUS_INTENT_ACTION:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->isSnoozeBroadCastReceiverRegistered:Z

    .line 81
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->isSnoozeServiceBounded:Z

    .line 83
    iput v0, p0, Lcom/payu/custombrowser/b;->snoozeCount:I

    .line 85
    iput v0, p0, Lcom/payu/custombrowser/b;->snoozeCountBackwardJourney:I

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/payu/custombrowser/b;->isSnoozeEnabled:Z

    .line 107
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->isRetryNowPressed:Z

    .line 108
    new-instance v2, Lcom/payu/custombrowser/b$1;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/b$1;-><init>(Lcom/payu/custombrowser/b;)V

    iput-object v2, p0, Lcom/payu/custombrowser/b;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    .line 131
    iput-boolean v1, p0, Lcom/payu/custombrowser/b;->ae:Z

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/b;->ah:Ljava/lang/Boolean;

    .line 143
    iput-boolean v1, p0, Lcom/payu/custombrowser/b;->ak:Z

    .line 145
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->al:Z

    .line 149
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->an:Z

    .line 151
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->ao:Z

    .line 157
    const-string v1, "snooze_broad_cast_message"

    iput-object v1, p0, Lcom/payu/custombrowser/b;->b:Ljava/lang/String;

    .line 160
    iput v0, p0, Lcom/payu/custombrowser/b;->as:I

    .line 163
    iput v0, p0, Lcom/payu/custombrowser/b;->at:I

    .line 169
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->isS2SHtmlSupport:Z

    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/b;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/payu/custombrowser/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 303
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 305
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 309
    sget v1, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 311
    sget v1, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/payu/custombrowser/R$string;->cb_snooze_network_error:I

    invoke-virtual {p0, v2}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    sget v1, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    sget v1, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_snooze_network_down_message:I

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    sget v1, Lcom/payu/custombrowser/R$id;->snooze_loader_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    sget v1, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    sget v1, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    sget v1, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    sget v1, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    sget v1, Lcom/payu/custombrowser/R$id;->t_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    sget v1, Lcom/payu/custombrowser/R$id;->t_nconfirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    sget v1, Lcom/payu/custombrowser/R$id;->button_go_back_snooze:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 323
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    new-instance v3, Lcom/payu/custombrowser/b$13;

    invoke-direct {v3, p0}, Lcom/payu/custombrowser/b$13;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$style;->cb_snooze_dialog:I

    invoke-direct {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    .line 332
    iget-object v1, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 334
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 335
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/payu/custombrowser/b$14;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/b$14;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 342
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 344
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    .line 1418
    nop

    .line 1421
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getInternetRestoredWindowTTL()I

    move-result v0

    goto :goto_0

    .line 1421
    :cond_0
    const/16 v0, 0x1388

    .line 1426
    :goto_0
    iget v1, p0, Lcom/payu/custombrowser/b;->as:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1433
    :goto_1
    iget-boolean v1, p0, Lcom/payu/custombrowser/b;->backwardJourneyStarted:Z

    if-eqz v1, :cond_4

    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1437
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1438
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1439
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->cb_transaction_verified:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->redirect_back_to_merchant:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/b;->updateSnoozeDialogWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1441
    :cond_2
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1442
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->cb_transaction_state_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->status_unknown_redirect_to_merchant:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/b;->updateSnoozeDialogWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1444
    :catch_0
    move-exception v1

    .line 1445
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1446
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1447
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->cb_transaction_state_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->status_unknown_redirect_to_merchant:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/b;->updateSnoozeDialogWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_3
    :goto_2
    goto :goto_3

    .line 1452
    :cond_4
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1453
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$string;->internet_restored:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$string;->resuming_your_transaction:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/b;->updateSnoozeDialogWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    :cond_5
    :goto_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1457
    new-instance v2, Lcom/payu/custombrowser/b$5;

    invoke-direct {v2, p0, p1}, Lcom/payu/custombrowser/b$5;-><init>(Lcom/payu/custombrowser/b;Landroid/content/Intent;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1486
    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/b;Landroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/b;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/payu/custombrowser/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/payu/custombrowser/b;->a()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 936
    nop

    .line 937
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 938
    nop

    .line 940
    iget-object v0, p0, Lcom/payu/custombrowser/b;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 941
    const/4 p1, 0x1

    goto :goto_0

    .line 940
    :cond_0
    const/4 p1, 0x0

    .line 943
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "amount"

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 944
    add-int/lit8 p1, p1, 0x1

    .line 947
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 948
    const/4 v2, 0x1

    goto :goto_1

    .line 947
    :cond_2
    const/4 v2, 0x0

    .line 951
    :goto_1
    if-nez p1, :cond_3

    .line 952
    const/4 v2, 0x0

    .line 968
    :cond_3
    if-nez p1, :cond_4

    .line 969
    goto/16 :goto_2

    .line 970
    :cond_4
    const-string p1, "made"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "purchase"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 972
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 973
    :cond_5
    const-string v3, "account"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "debited"

    if-eqz v3, :cond_6

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 974
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 975
    :cond_6
    const-string v3, "ac"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 976
    const/4 v0, 0x1

    goto :goto_2

    .line 977
    :cond_7
    const-string v3, "tranx"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 978
    const/4 v0, 0x1

    goto :goto_2

    .line 979
    :cond_8
    const-string v3, "transaction"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 980
    const/4 v0, 0x1

    goto :goto_2

    .line 981
    :cond_9
    const-string p1, "spent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 982
    const/4 v0, 0x1

    goto :goto_2

    .line 983
    :cond_a
    const-string p1, "Thank you using card for"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 984
    const/4 v0, 0x1

    goto :goto_2

    .line 985
    :cond_b
    const-string p1, "charge"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "initiated"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 986
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    goto :goto_2

    .line 988
    :cond_c
    move v0, v2

    :cond_d
    :goto_2
    return v0
.end method

.method static synthetic c(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/payu/custombrowser/b;->q()V

    return-void
.end method

.method private o()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    const-string v2, "PayU"

    invoke-virtual {v0, p0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 473
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v2, Lcom/payu/custombrowser/b$15;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/b$15;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 492
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 493
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 494
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 497
    return-void
.end method

.method private p()V
    .locals 2

    .line 1079
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->m()V

    .line 1080
    const-string v0, "payment_initiated"

    iput-object v0, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    .line 1082
    iget-object v0, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    const-string v1, "user_input"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    new-instance v0, Lcom/payu/custombrowser/b$19;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/b$19;-><init>(Lcom/payu/custombrowser/b;)V

    .line 1157
    iget-object v1, p0, Lcom/payu/custombrowser/b;->U:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1158
    return-void
.end method

.method private q()V
    .locals 1

    .line 1305
    iget-boolean v0, p0, Lcom/payu/custombrowser/b;->forwardJourneyForChromeLoaderIsComplete:Z

    if-eqz v0, :cond_0

    .line 1306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->firstTouch:Z

    .line 1307
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->dismissSlowUserWarningTimer()V

    .line 1309
    :cond_0
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/String;)V
.end method

.method abstract b()V
.end method

.method public cbOldFlowOnCreateView()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "webView"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    .line 502
    sget-object v0, Lcom/payu/custombrowser/Bank;->b:Ljava/lang/String;

    const-string v1, "nb"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payu/custombrowser/Bank;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getViewPortWideEnable()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 506
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 508
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 509
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v3, Lcom/payu/custombrowser/b$16;

    invoke-direct {v3, p0}, Lcom/payu/custombrowser/b$16;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 556
    sget-object v0, Lcom/payu/custombrowser/Bank;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/payu/custombrowser/Bank;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/b;->G:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 557
    const-string v3, "viewPortWide"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 560
    :cond_4
    return-void
.end method

.method public cbOldOnCreate()V
    .locals 3

    .line 350
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/b;->G:Landroid/os/Bundle;

    .line 351
    iget-object v0, p0, Lcom/payu/custombrowser/b;->G:Landroid/os/Bundle;

    const-string v1, "auto_approve"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->autoApprove:Z

    .line 352
    iget-object v0, p0, Lcom/payu/custombrowser/b;->G:Landroid/os/Bundle;

    const-string v1, "auto_select_otp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->autoSelectOtp:Z

    .line 353
    iget-object v0, p0, Lcom/payu/custombrowser/b;->G:Landroid/os/Bundle;

    const-string v1, "smsPermission"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->B:Z

    .line 355
    sget-object v0, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sdkname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    .line 358
    :cond_1
    sget-object v0, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "txnid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    .line 361
    :cond_3
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    :cond_4
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "merchantid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 365
    :cond_5
    return-void
.end method

.method public cbOnCreate()V
    .locals 3

    .line 368
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cb_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 369
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iput-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 370
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order_details"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/b;->reviewOrderDetailList:Ljava/util/ArrayList;

    .line 371
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantSMSPermission()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->B:Z

    .line 372
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getAutoApprove()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->autoApprove:Z

    .line 373
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getAutoSelectOTP()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/payu/custombrowser/b;->autoSelectOtp:Z

    .line 375
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_e

    .line 376
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_3

    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 380
    :cond_4
    sput-object v1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    goto :goto_3

    .line 378
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 383
    :cond_6
    :goto_3
    sget-object v0, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 385
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    goto :goto_4

    .line 387
    :cond_8
    const-string v0, "123"

    sput-object v0, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    .line 390
    :cond_9
    :goto_4
    sget-object v0, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 391
    :cond_a
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 392
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    goto :goto_5

    .line 394
    :cond_b
    sput-object v1, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    .line 396
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurepayS2Surl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 397
    :cond_d
    iput-boolean v2, p0, Lcom/payu/custombrowser/b;->isS2SHtmlSupport:Z

    .line 401
    :cond_e
    return-void
.end method

.method public cbOnCreateView()V
    .locals 9

    .line 564
    sget-object v0, Lcom/payu/custombrowser/Bank;->b:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payu/custombrowser/Bank;->b:Ljava/lang/String;

    const-string v2, "nb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getViewPortWideEnable()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 570
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v1, Lcom/payu/custombrowser/PayUWebChromeClient;

    move-object v2, p0

    check-cast v2, Lcom/payu/custombrowser/Bank;

    invoke-direct {v1, v2}, Lcom/payu/custombrowser/PayUWebChromeClient;-><init>(Lcom/payu/custombrowser/Bank;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 571
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSurePay()I

    move-result v0

    if-lez v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v1, Lcom/payu/custombrowser/PayUSurePayWebViewClient;

    sget-object v3, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/payu/custombrowser/PayUSurePayWebViewClient;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_1

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v1, Lcom/payu/custombrowser/PayUWebViewClient;

    sget-object v3, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/payu/custombrowser/PayUWebViewClient;-><init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 578
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 579
    const-string v0, "cb_status"

    const-string v1, "load_html"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getHtmlData()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const-string v4, "https://secure.payu.in/_payment"

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurepayS2Surl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 582
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurepayS2Surl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 584
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 587
    :cond_5
    :goto_2
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 588
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->setCBProperties(Landroid/webkit/WebView;Lcom/payu/custombrowser/Bank;)V

    .line 604
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/b;->mAnalyticsMap:Ljava/util/HashMap;

    .line 607
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/custombrowser/util/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 609
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/payu/custombrowser/util/c;->a(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 610
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/payu/custombrowser/util/c;->a(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "web_view_updated_successfully"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/payu/custombrowser/util/c;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 615
    :cond_7
    return-void
.end method

.method d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 920
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 922
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 923
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 924
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 925
    aget-object v5, v4, v2

    .line 926
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 927
    const/4 p1, 0x1

    aget-object p1, v4, p1

    return-object p1

    .line 922
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 931
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected dismissSlowUserWarning()V
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/payu/custombrowser/b;->slowUserWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1297
    :cond_0
    return-void
.end method

.method abstract dismissSlowUserWarningTimer()V
.end method

.method public fillOTP(Landroid/content/BroadcastReceiver;)V
    .locals 6
    .param p1, "mReceiver"    # Landroid/content/BroadcastReceiver;

    .line 993
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 994
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$id;->otp_sms:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 995
    iget-boolean v1, p0, Lcom/payu/custombrowser/b;->ae:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 996
    iget-object v1, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->ag:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 997
    iget-object v1, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "regenerate_click"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "otp_click"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "payment_initiated"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1011
    const-string v1, "otp_web"

    iput-object v1, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    goto :goto_1

    .line 1007
    :pswitch_0
    const-string v1, "received_otp_regenerate"

    iput-object v1, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    .line 1009
    goto :goto_1

    .line 1003
    :pswitch_1
    const-string v1, "received_otp_selected"

    iput-object v1, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    .line 1005
    goto :goto_1

    .line 999
    :pswitch_2
    const-string v1, "received_otp_direct"

    iput-object v1, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    .line 1001
    nop

    .line 1014
    :goto_1
    iget-object v1, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    const-string v2, "otp_received"

    invoke-virtual {p0, v2, v1}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    .line 1018
    iget-object v1, p0, Lcom/payu/custombrowser/b;->ap:Lcom/payu/custombrowser/custombar/a;

    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/custombar/a;->c(Landroid/view/View;)V

    .line 1020
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/payu/custombrowser/R$id;->approve:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1021
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 1022
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Lcom/payu/custombrowser/util/c;->a(FLandroid/view/View;)V

    .line 1023
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1025
    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$id;->timer:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->retry_text:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->regenerate_layout:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    sget v4, Lcom/payu/custombrowser/R$id;->waiting:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    sget v3, Lcom/payu/custombrowser/R$id;->otp_recieved:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1031
    iget-boolean v2, p0, Lcom/payu/custombrowser/b;->autoApprove:Z

    if-eqz v2, :cond_1

    .line 1032
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 1033
    const-string v2, "auto_approve"

    iput-object v2, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    .line 1034
    iget-object v2, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    const-string v3, "user_input"

    invoke-virtual {p0, v3, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_1
    new-instance v2, Lcom/payu/custombrowser/b$18;

    invoke-direct {v2, p0, v0}, Lcom/payu/custombrowser/b$18;-><init>(Lcom/payu/custombrowser/b;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2134620e -> :sswitch_2
        0x28308b74 -> :sswitch_1
        0x7c454b31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fillOTPOnBankPage()V
    .locals 4

    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/b;->i:Lorg/json/JSONObject;

    sget v1, Lcom/payu/custombrowser/R$string;->cb_fill_otp:I

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->i:Lorg/json/JSONObject;

    sget v3, Lcom/payu/custombrowser/R$string;->cb_fill_otp:I

    invoke-virtual {p0, v3}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"url\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :cond_0
    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 897
    :goto_0
    return-void
.end method

.method public logOnTerminate()V
    .locals 4

    .line 622
    const-string v0, "last_url"

    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/payu/custombrowser/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 623
    :catch_0
    move-exception v1

    .line 624
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/payu/custombrowser/util/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 627
    nop

    .line 629
    iget-object v0, p0, Lcom/payu/custombrowser/b;->o:Ljava/util/ArrayList;

    const-string v1, "CUSTOM_BROWSER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/payu/custombrowser/b;->o:Ljava/util/ArrayList;

    const-string v1, "review_order_custom_browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iput-object v1, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    goto :goto_1

    .line 633
    :cond_0
    const-string v0, "NON_CUSTOM_BROWSER"

    iput-object v0, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    .line 635
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    const-string v1, "cb_status"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_1
    const-string v0, "terminate_transaction"

    iput-object v0, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lcom/payu/custombrowser/b;->m:Ljava/lang/String;

    const-string v1, "user_input"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/payu/custombrowser/b;->v:Lcom/payu/custombrowser/widgets/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/b;->v:Lcom/payu/custombrowser/widgets/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/a;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/payu/custombrowser/b;->v:Lcom/payu/custombrowser/widgets/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/a;->dismiss()V

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/b;->unregisterBroadcast(Landroid/content/BroadcastReceiver;)V

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->listOfTxtFld:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/payu/custombrowser/b;->listOfTxtFld:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/payu/custombrowser/b;->isOTPFilled:Z

    if-nez v0, :cond_4

    .line 651
    iget-object v0, p0, Lcom/payu/custombrowser/b;->listOfTxtFld:Ljava/lang/String;

    const-string v1, "bank_page_otp_fields"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/payu/custombrowser/b;->hostName:Ljava/lang/String;

    const-string v1, "bank_page_host_name"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/c;->e(Landroid/content/Context;)V

    .line 657
    return-void

    .line 626
    :goto_2
    iget-object v2, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v3, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/payu/custombrowser/util/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 627
    throw v1
.end method

.method m()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/payu/custombrowser/b;->ak:Z

    if-eqz v0, :cond_0

    .line 796
    new-instance v0, Lcom/payu/custombrowser/b$17;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/b$17;-><init>(Lcom/payu/custombrowser/b;)V

    iput-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->n()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/b;->registerBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 885
    return-void
.end method

.method public markPreviousTxnAsUserCanceled(Ljava/lang/String;)V
    .locals 1
    .param p1, "logMessage"    # Ljava/lang/String;

    .line 1797
    new-instance v0, Lcom/payu/custombrowser/widgets/b;

    invoke-direct {v0, p1}, Lcom/payu/custombrowser/widgets/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/b;->a()V

    .line 1798
    return-void
.end method

.method n()Landroid/content/IntentFilter;
    .locals 3

    .line 909
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 910
    const v1, 0x98967f

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 912
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 913
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_0
    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 917
    :goto_0
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 298
    invoke-super {p0, p1}, Lcom/payu/custombrowser/a;->onAttach(Landroid/content/Context;)V

    .line 299
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    .line 300
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 172
    invoke-super {p0, p1}, Lcom/payu/custombrowser/a;->onCreate(Landroid/os/Bundle;)V

    .line 185
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    invoke-virtual {v0}, Lcom/payu/custombrowser/util/c;->c()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/b;->surePayS2SPayUId:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "snoozeEnabled"

    invoke-virtual {v1, v3, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/payu/custombrowser/b;->isSnoozeEnabled:Z

    .line 189
    const/4 v1, 0x0

    sput-boolean v1, Lcom/payu/custombrowser/b;->a:Z

    .line 191
    iget-object v2, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v3, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    const-string v4, "com.payu.custombrowser.snoozepref"

    invoke-static {v3, v4}, Lcom/payu/custombrowser/util/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Map;)Lcom/payu/custombrowser/util/SnoozeConfigMap;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/b;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    .line 194
    const-string v3, "*"

    invoke-virtual {v2, v3}, Lcom/payu/custombrowser/util/SnoozeConfigMap;->getPercentageAndTimeout(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/b;->aq:[I

    .line 195
    aget v4, v2, v1

    iput v4, p0, Lcom/payu/custombrowser/b;->snoozeUrlLoadingPercentage:I

    .line 196
    const/4 v4, 0x1

    aget v2, v2, v4

    iput v2, p0, Lcom/payu/custombrowser/b;->snoozeUrlLoadingTimeout:I

    .line 198
    iget-object v2, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v5, p0, Lcom/payu/custombrowser/b;->ar:Lcom/payu/custombrowser/util/SnoozeConfigMap;

    invoke-virtual {v2, v5, v3}, Lcom/payu/custombrowser/util/c;->a(Lcom/payu/custombrowser/util/SnoozeConfigMap;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/payu/custombrowser/b;->at:I

    .line 204
    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.payu.custombrowser.payucustombrowser"

    const-string v5, "sp_image_download_time_out"

    invoke-static {v2, v3, v5, v1}, Lcom/payu/custombrowser/util/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/payu/custombrowser/b;->snoozeImageDownloadTimeout:I

    .line 209
    iget-object v2, p0, Lcom/payu/custombrowser/b;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v2}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sender"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "snoozeService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    sput-boolean v4, Lcom/payu/custombrowser/b;->a:Z

    .line 221
    :cond_1
    new-instance v2, Lcom/payu/custombrowser/b$12;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/b$12;-><init>(Lcom/payu/custombrowser/b;)V

    iput-object v2, p0, Lcom/payu/custombrowser/b;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 276
    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 277
    iput-boolean v4, p0, Lcom/payu/custombrowser/b;->H:Z

    .line 278
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->cbOldOnCreate()V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->cbOnCreate()V

    .line 283
    :goto_0
    sget-object v2, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/payu/custombrowser/b;->initAnalytics(Ljava/lang/String;)V

    .line 284
    iput-boolean v1, p0, Lcom/payu/custombrowser/b;->ac:Z

    .line 285
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 286
    iget-object v1, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    invoke-virtual {v1}, Lcom/payu/custombrowser/util/c;->b()V

    .line 287
    iput-object v0, p0, Lcom/payu/custombrowser/b;->surePayS2SPayUId:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/payu/custombrowser/b;->surePayS2Surl:Ljava/lang/String;

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    if-eqz v0, :cond_5

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSurePay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snooze_enable_count"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "WARN"

    goto :goto_1

    :cond_4
    const-string v0, "FAIL"

    :goto_1
    const-string v1, "snooze_mode_set_merchant"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/payu/custombrowser/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 417
    iget-boolean v0, p0, Lcom/payu/custombrowser/b;->H:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 418
    sget v0, Lcom/payu/custombrowser/R$layout;->bankold:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 419
    nop

    .line 420
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 421
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->cbOldFlowOnCreateView()V

    move-object v1, v0

    goto :goto_0

    .line 423
    :cond_0
    sget v0, Lcom/payu/custombrowser/R$layout;->bank:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 424
    sget v1, Lcom/payu/custombrowser/R$id;->trans_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/b;->K:Landroid/view/View;

    .line 425
    sget v1, Lcom/payu/custombrowser/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    .line 426
    sget v1, Lcom/payu/custombrowser/R$id;->cb_blank_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/b;->Z:Landroid/view/View;

    .line 427
    sget v1, Lcom/payu/custombrowser/R$id;->parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 429
    sget v2, Lcom/payu/custombrowser/R$id;->t_payu_review_order_cb:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/payu/custombrowser/b;->X:Landroid/widget/TextView;

    .line 431
    sget v2, Lcom/payu/custombrowser/R$id;->t_payu_review_order:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/payu/custombrowser/b;->W:Landroid/widget/TextView;

    .line 432
    iget-object v2, p0, Lcom/payu/custombrowser/b;->X:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/payu/custombrowser/b;->setReviewOrderButtonProperty(Landroid/widget/TextView;)V

    .line 433
    sget v2, Lcom/payu/custombrowser/R$id;->r_payu_review_order:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/payu/custombrowser/b;->V:Landroid/widget/RelativeLayout;

    .line 434
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->cbOnCreateView()V

    .line 436
    iget-object v2, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableReviewOrder()I

    move-result v2

    if-nez v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderCustomView()I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "review_order_type"

    if-eq v2, v3, :cond_1

    .line 438
    const-string v2, "review_order_custom"

    invoke-virtual {p0, v4, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    const-string v2, "review_order_default"

    invoke-virtual {p0, v4, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_2
    :goto_0
    sget v2, Lcom/payu/custombrowser/R$id;->help_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/payu/custombrowser/b;->I:Landroid/widget/FrameLayout;

    .line 451
    sget v2, Lcom/payu/custombrowser/R$id;->view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/b;->J:Landroid/view/View;

    .line 452
    sget v2, Lcom/payu/custombrowser/R$id;->cb_progressbar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/payu/custombrowser/b;->x:Landroid/widget/ProgressBar;

    .line 453
    invoke-direct {p0}, Lcom/payu/custombrowser/b;->o()V

    .line 454
    new-instance v2, Lcom/payu/custombrowser/a$b;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/a$b;-><init>(Lcom/payu/custombrowser/a;)V

    iput-object v2, p0, Lcom/payu/custombrowser/b;->viewOnClickListener:Lcom/payu/custombrowser/a$b;

    .line 457
    invoke-direct {p0}, Lcom/payu/custombrowser/b;->p()V

    .line 460
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/payu/custombrowser/b;->mAnalyticsMap:Ljava/util/HashMap;

    .line 463
    new-instance v2, Lcom/payu/custombrowser/b$a;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/b$a;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 673
    invoke-super {p0}, Lcom/payu/custombrowser/a;->onDestroy()V

    .line 674
    iget-object v0, p0, Lcom/payu/custombrowser/b;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/payu/custombrowser/b;->mResetCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/b;->timerProgress:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 676
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/b;->ag:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 682
    iget-object v0, p0, Lcom/payu/custombrowser/b;->slowUserCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 690
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/payu/custombrowser/b;->snoozeVisibleCountBackwdJourney:I

    iget v2, p0, Lcom/payu/custombrowser/b;->snoozeVisibleCountFwdJourney:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snooze_count"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/b;->setPayuCustomBrowserCallback(Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V

    .line 701
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/b;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/payu/custombrowser/b;->isSnoozeBroadCastReceiverRegistered:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/payu/custombrowser/b;->a:Z

    if-nez v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/payu/custombrowser/b;->snoozeBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 710
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/b;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/payu/custombrowser/b;->isSnoozeServiceBounded:Z

    if-eqz v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->snoozeServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 714
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_4

    sget-boolean v2, Lcom/payu/custombrowser/b;->a:Z

    if-eqz v2, :cond_4

    .line 715
    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/b;->M:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 720
    iget-object v0, p0, Lcom/payu/custombrowser/b;->ap:Lcom/payu/custombrowser/custombar/a;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->M:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/custombar/a;->b(Landroid/view/View;)V

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/b;->N:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 722
    iget-object v0, p0, Lcom/payu/custombrowser/b;->ap:Lcom/payu/custombrowser/custombar/a;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->N:Landroid/view/View;

    sget v3, Lcom/payu/custombrowser/R$id;->progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/custombar/a;->b(Landroid/view/View;)V

    .line 724
    :cond_6
    iget-object v0, p0, Lcom/payu/custombrowser/b;->O:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    if-eqz v0, :cond_7

    .line 725
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->O:Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;

    invoke-virtual {v2}, Lcom/payu/payuanalytics/analytics/PayUDeviceAnalytics;->getmTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 729
    :cond_7
    iget-object v0, p0, Lcom/payu/custombrowser/b;->l:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    if-eqz v0, :cond_8

    .line 730
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->l:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getmTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 732
    :cond_8
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->ag:Ljava/util/Timer;

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 734
    iget-object v0, p0, Lcom/payu/custombrowser/b;->P:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 735
    iget-object v0, p0, Lcom/payu/custombrowser/b;->P:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 738
    :cond_9
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->logOnTerminate()V

    .line 739
    sput-object v1, Lcom/payu/custombrowser/Bank;->c:Ljava/lang/String;

    .line 740
    sput-object v1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 741
    sput-object v1, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    .line 742
    sput-object v1, Lcom/payu/custombrowser/Bank;->b:Ljava/lang/String;

    .line 743
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    .line 744
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 746
    :cond_a
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    invoke-virtual {v0}, Lcom/payu/custombrowser/util/c;->c()V

    .line 747
    iput-object v1, p0, Lcom/payu/custombrowser/b;->surePayS2SPayUId:Ljava/lang/String;

    .line 748
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 661
    invoke-super {p0}, Lcom/payu/custombrowser/a;->onDestroyView()V

    .line 662
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v1, p0, Lcom/payu/custombrowser/b;->timerProgress:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/c;->a(Ljava/util/Timer;)V

    .line 663
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->v:Lcom/payu/custombrowser/widgets/a;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/payu/custombrowser/b;->v:Lcom/payu/custombrowser/widgets/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/a;->dismiss()V

    .line 670
    :cond_1
    return-void
.end method

.method abstract onPageStarted()V
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1189
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1191
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->am:Z

    .line 1192
    iget-boolean v1, p0, Lcom/payu/custombrowser/b;->ao:Z

    if-eqz v1, :cond_0

    .line 1194
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payu/custombrowser/b;->i:Lorg/json/JSONObject;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_otp:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    goto :goto_0

    .line 1195
    :catch_0
    move-exception v1

    .line 1196
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1199
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->ak:Z

    .line 1201
    iput-object v3, p0, Lcom/payu/custombrowser/b;->af:Ljava/lang/String;

    .line 1202
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->m()V

    .line 1203
    iget-object v0, p0, Lcom/payu/custombrowser/b;->aj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1206
    :cond_1
    iget-object v1, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v4, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1, v4, v2}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1207
    iput-boolean v0, p0, Lcom/payu/custombrowser/b;->ak:Z

    .line 1208
    iget-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1210
    iget-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/b;->unregisterBroadcast(Landroid/content/BroadcastReceiver;)V

    .line 1211
    iput-object v3, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    .line 1214
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/b;->aj:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;)V

    .line 1218
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .line 752
    const-string v0, "transaction_not_verified_dialog_recent_app"

    invoke-super {p0}, Lcom/payu/custombrowser/a;->onResume()V

    .line 755
    iget-boolean v1, p0, Lcom/payu/custombrowser/b;->aa:Z

    if-eqz v1, :cond_3

    .line 756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payu/custombrowser/b;->aa:Z

    .line 757
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->cancelTransactionNotification()V

    .line 758
    iget-object v1, p0, Lcom/payu/custombrowser/b;->ab:Landroid/content/Intent;

    const-string v2, "-1"

    if-eqz v1, :cond_2

    .line 759
    iget-boolean v1, p0, Lcom/payu/custombrowser/b;->backwardJourneyStarted:Z

    if-eqz v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/payu/custombrowser/b;->ab:Landroid/content/Intent;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 764
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 765
    sget v1, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 766
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 767
    const-string v1, "transaction_verified_dialog_recent_app"

    invoke-virtual {p0, v1, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    goto :goto_1

    .line 771
    :catch_0
    move-exception v1

    .line 772
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 773
    invoke-virtual {p0, v0, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :goto_1
    goto :goto_2

    .line 778
    :cond_1
    const-string v0, "internet_restored_dialog_recent_app"

    invoke-virtual {p0, v0, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :goto_2
    iget-object v0, p0, Lcom/payu/custombrowser/b;->ab:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/payu/custombrowser/b;->a(Landroid/content/Intent;)V

    goto :goto_3

    .line 783
    :cond_2
    const-string v0, "internet_not_restored_dialog_recent_app"

    invoke-virtual {p0, v0, v2}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_3
    :goto_3
    return-void
.end method

.method public postDataToSurl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "postData"    # Ljava/lang/String;
    .param p2, "surl"    # Ljava/lang/String;

    .line 1687
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payu/custombrowser/b$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/payu/custombrowser/b$11;-><init>(Lcom/payu/custombrowser/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1709
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1711
    return-void
.end method

.method public registerSMSBroadcast()V
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->m()V

    goto :goto_0

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->n()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/b;->registerBroadcast(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 907
    :goto_0
    return-void
.end method

.method abstract reloadWebView()V
.end method

.method abstract reloadWebView(Ljava/lang/String;)V
.end method

.method abstract reloadWebView(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public resumeTransaction(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1754
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cb_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iput-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 1758
    const-string v0, "currentUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "s2sRetryUrl"

    if-eqz v1, :cond_6

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1759
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "https://mobiletest.payu.in/_payment"

    const-string v3, "https://secure.payu.in/_payment"

    if-eqz v1, :cond_2

    .line 1760
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1762
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v6

    const-string v2, "sure_pay_cancelled"

    const-string v4, ""

    const-string v7, ""

    invoke-static/range {v1 .. v7}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/b;->markPreviousTxnAsUserCanceled(Ljava/lang/String;)V

    .line 1764
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/b;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1766
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/Bank;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1767
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/b;->reloadWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 1769
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1771
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v6

    const-string v2, "sure_pay_cancelled"

    const-string v4, ""

    const-string v7, ""

    invoke-static/range {v1 .. v7}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/b;->markPreviousTxnAsUserCanceled(Ljava/lang/String;)V

    .line 1773
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/b;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1777
    :cond_6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1778
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/b;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1780
    :cond_7
    iget-object v0, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/b;->reloadWebView(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :goto_0
    return-void
.end method

.method protected showCbBlankOverlay(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 1361
    iget-object v0, p0, Lcom/payu/custombrowser/b;->Z:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    :cond_0
    return-void
.end method

.method protected showSlowUserWarning()V
    .locals 5

    .line 1225
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/payu/custombrowser/b;->n:Z

    if-nez v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1234
    sget v1, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze_slow_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1236
    sget v1, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1238
    sget v2, Lcom/payu/custombrowser/R$string;->cb_snooze_slow_user_warning_header:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1240
    sget v1, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1242
    sget v2, Lcom/payu/custombrowser/R$id;->snooze_status_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1243
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1244
    iget-object v3, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/payu/custombrowser/R$drawable;->hourglass:I

    invoke-virtual {p0, v3, v4}, Lcom/payu/custombrowser/b;->getCbDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1247
    iget-object v2, p0, Lcom/payu/custombrowser/b;->slowUserWarningDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1248
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/b;->slowUserWarningDialog:Landroid/app/AlertDialog;

    .line 1249
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1250
    iget-object v0, p0, Lcom/payu/custombrowser/b;->slowUserWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1251
    iget-object v0, p0, Lcom/payu/custombrowser/b;->slowUserWarningDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/payu/custombrowser/b$2;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/b$2;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1257
    iget-object v0, p0, Lcom/payu/custombrowser/b;->slowUserWarningDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/payu/custombrowser/b$3;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/b$3;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1274
    new-instance v0, Lcom/payu/custombrowser/b$4;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/b$4;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->slowUserWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1284
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    check-cast v0, Lcom/payu/custombrowser/CBActivity;

    sget v0, Lcom/payu/custombrowser/CBActivity;->b:I

    if-ne v0, v3, :cond_1

    .line 1286
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->showSlowUserWarningNotification()V

    .line 1289
    :cond_1
    return-void
.end method

.method protected showSlowUserWarningNotification()V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1317
    :cond_0
    return-void
.end method

.method public showTransactionStatusDialog(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "payuResponse"    # Ljava/lang/String;
    .param p2, "showDialogMessage"    # Z

    .line 1497
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/b;->setTransactionStatusReceived(Z)V

    .line 1499
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    sget v1, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v1}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    iget-object v1, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1502
    sget v2, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1503
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1504
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1505
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    .line 1508
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_4

    .line 1516
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v6, ""

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v6

    :goto_0
    invoke-static {v0}, Lcom/payu/custombrowser/Bank;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v7, "snooze_transaction_status_update"

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    :try_start_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v8, :cond_1

    .line 1517
    const-string v0, "data_repost"

    invoke-virtual {p0, v7, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0, v5, v6}, Lcom/payu/custombrowser/b;->a(ILjava/lang/String;)V

    .line 1520
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->reloadWebView()V

    goto/16 :goto_4

    .line 1523
    :cond_1
    const-string v0, "post_to_surl"

    invoke-virtual {p0, v7, v0}, Lcom/payu/custombrowser/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1526
    nop

    .line 1528
    :try_start_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    const-string v7, "response"

    invoke-virtual {v0, p1, v7}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1529
    :try_start_4
    new-instance v7, Lcom/payu/custombrowser/util/c;

    invoke-direct {v7}, Lcom/payu/custombrowser/util/c;-><init>()V

    iget-object v8, p0, Lcom/payu/custombrowser/b;->customBrowserConfig:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v8}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v8

    const-string v9, "surl"

    invoke-virtual {v7, v8, v9}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0, v7}, Lcom/payu/custombrowser/b;->postDataToSurl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1532
    goto :goto_2

    .line 1530
    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    move-object v0, v6

    .line 1531
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 1533
    :goto_2
    nop

    .line 1535
    if-eqz p2, :cond_2

    .line 1536
    sget v6, Lcom/payu/custombrowser/R$id;->snooze_status_icon:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    sget v6, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_transaction_sucess:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1539
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1540
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/payu/custombrowser/R$string;->cb_transaction_success_msg:I

    invoke-virtual {p0, v7}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    sget v6, Lcom/payu/custombrowser/R$id;->snooze_loader_view:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    sget v6, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    sget v6, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    sget v6, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    sget v6, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1546
    sget v6, Lcom/payu/custombrowser/R$id;->t_confirm:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    sget v6, Lcom/payu/custombrowser/R$id;->t_nconfirm:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1549
    iget-object v1, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    new-instance v5, Lcom/payu/custombrowser/b$6;

    invoke-direct {v5, p0, v0}, Lcom/payu/custombrowser/b$6;-><init>(Lcom/payu/custombrowser/b;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1565
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1566
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1569
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payu/custombrowser/b$7;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/b$7;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1580
    :cond_2
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1581
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1585
    :goto_3
    goto/16 :goto_4

    .line 1588
    :cond_4
    if-eqz p2, :cond_5

    .line 1594
    sget v0, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    sget v0, Lcom/payu/custombrowser/R$id;->snooze_status_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    sget v0, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    sget v0, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1599
    sget v0, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_transaction_failed_title:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1600
    sget v0, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_transaction_failed:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1605
    sget v0, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    sget v0, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    sget v0, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    sget v0, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1609
    sget v0, Lcom/payu/custombrowser/R$id;->text_view_transaction_snoozed_message1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    sget v0, Lcom/payu/custombrowser/R$id;->text_view_ac_debited_twice:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    sget v0, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/payu/custombrowser/b$8;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/b$8;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1648
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/payu/custombrowser/b$9;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/b$9;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1657
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1658
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->hideReviewOrderDetails()V

    .line 1659
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->hideReviewOrderHorizontalBar()V

    .line 1660
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1661
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payu/custombrowser/b$10;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/b$10;-><init>(Lcom/payu/custombrowser/b;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1672
    :cond_5
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1677
    :goto_4
    goto :goto_5

    .line 1675
    :catch_2
    move-exception v0

    .line 1676
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1678
    :goto_5
    return-void
.end method

.method abstract startSlowUserWarningTimer()V
.end method

.method public updateHeight(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1168
    iget v0, p0, Lcom/payu/custombrowser/b;->u:I

    if-nez v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->e()V

    .line 1170
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->f()V

    .line 1172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/b;->b(Landroid/view/View;)V

    .line 1173
    return-void
.end method

.method public updateLoaderHeight()V
    .locals 4

    .line 1179
    iget v0, p0, Lcom/payu/custombrowser/b;->ad:I

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/webkit/WebView;->measure(II)V

    .line 1181
    iget-object v0, p0, Lcom/payu/custombrowser/b;->r:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    .line 1182
    int-to-double v0, v0

    const-wide v2, 0x3fd6666666666666L    # 0.35

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/payu/custombrowser/b;->ad:I

    .line 1184
    :cond_0
    return-void
.end method

.method protected updateSnoozeDialogWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1372
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 1374
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b;->snoozeService:Lcom/payu/custombrowser/services/SnoozeService;

    if-eqz v0, :cond_1

    .line 1377
    invoke-virtual {v0}, Lcom/payu/custombrowser/services/SnoozeService;->a()V

    .line 1378
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->b()V

    .line 1379
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1380
    iget-object v0, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1381
    sget v1, Lcom/payu/custombrowser/R$layout;->cb_layout_snooze:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1383
    sget v1, Lcom/payu/custombrowser/R$id;->snooze_header_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    sget v1, Lcom/payu/custombrowser/R$id;->text_view_cancel_snooze_window:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    sget v1, Lcom/payu/custombrowser/R$id;->text_view_snooze_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1387
    sget v1, Lcom/payu/custombrowser/R$id;->snooze_loader_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    .line 1388
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->setVisibility(I)V

    .line 1389
    invoke-virtual {v1}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->a()V

    .line 1390
    sget v1, Lcom/payu/custombrowser/R$id;->button_snooze_transaction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1391
    sget v1, Lcom/payu/custombrowser/R$id;->text_view_retry_message_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    sget v1, Lcom/payu/custombrowser/R$id;->button_retry_transaction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    sget v1, Lcom/payu/custombrowser/R$id;->button_cancel_transaction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    sget v1, Lcom/payu/custombrowser/R$id;->t_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    sget v1, Lcom/payu/custombrowser/R$id;->t_nconfirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    sget v1, Lcom/payu/custombrowser/R$id;->button_go_back_snooze:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    .line 1399
    iget-object v1, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1400
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 1401
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1402
    invoke-virtual {p0}, Lcom/payu/custombrowser/b;->hideReviewOrderHorizontalBar()V

    .line 1403
    iget-object v0, p0, Lcom/payu/custombrowser/b;->k:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 1405
    :cond_2
    return-void
.end method
