.class public Lcom/payumoney/core/ui/PayULoginDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/OnOTPRequestSendListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;
    }
.end annotation


# instance fields
.field a:Landroid/accounts/AccountManager;

.field private b:Landroid/widget/AutoCompleteTextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroidx/fragment/app/FragmentActivity;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Lcom/payumoney/core/listener/OnUserLoginListener;

.field private j:I

.field private k:Lcom/payumoney/core/listener/PayULoginDialogListener;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/String;

.field private final p:I

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->a:Landroid/accounts/AccountManager;

    .line 76
    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->b:Landroid/widget/AutoCompleteTextView;

    .line 77
    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    .line 78
    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    .line 80
    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->g:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->h:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->o:Ljava/lang/String;

    .line 90
    const/16 v0, 0x7b

    iput v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->p:I

    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/ui/PayULoginDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->q:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->b:Landroid/widget/AutoCompleteTextView;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/core/ui/PayULoginDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 523
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 524
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 527
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 500
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 501
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const/high16 p2, -0x10000

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    return-void
.end method

.method private a(Landroid/view/View;ZII)V
    .locals 0

    .line 484
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 487
    instance-of p2, p1, Landroid/widget/Button;

    if-eqz p2, :cond_0

    .line 488
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(I)V

    .line 490
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/ui/PayULoginDialog;Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/ui/PayULoginDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 397
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    sget v0, Lcom/payumoney/core/R$string;->logging_in:I

    const/4 v1, 0x0

    const/16 v2, 0x96

    invoke-direct {p0, p2, v1, v0, v2}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Landroid/view/View;ZII)V

    .line 400
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->g:Ljava/lang/String;

    const-string v0, "guestLogin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 401
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object p2

    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/payumoney/core/SdkSession;->setLoginMode(Ljava/lang/String;)V

    .line 402
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/payumoney/core/SdkSession;->setGuestEmail(Ljava/lang/String;)V

    .line 403
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 404
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "amount"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "merchantId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "params"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 407
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 408
    iget-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 409
    goto :goto_0

    .line 410
    :cond_0
    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    iget-object p2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payumoney/core/ui/PayULoginDialog;->i:Lcom/payumoney/core/listener/OnUserLoginListener;

    iget-object v4, p0, Lcom/payumoney/core/ui/PayULoginDialog;->k:Lcom/payumoney/core/listener/PayULoginDialogListener;

    const-string v5, "login_dialog"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/payumoney/core/SdkSession;->create(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Lcom/payumoney/core/listener/PayULoginDialogListener;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void
.end method

.method private a()Z
    .locals 3

    .line 369
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/core/ui/PayULoginDialog;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->o:Ljava/lang/String;

    const-string v2, "otp_request_api_tag"

    invoke-virtual {v0, p0, v1, v2}, Lcom/payumoney/core/PayUmoneySDK;->requestOTPForLogin(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 386
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 392
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->g:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 587
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 588
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->l:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 589
    return-void
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 509
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 510
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/payumoney/core/R$color;->primary_green:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 514
    return-void
.end method

.method static synthetic c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->o:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->q:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Lcom/payumoney/core/ui/PayULoginDialog$10;

    invoke-direct {v0, p0}, Lcom/payumoney/core/ui/PayULoginDialog$10;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->q:Landroid/content/BroadcastReceiver;

    .line 706
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 707
    const v1, 0x98967f

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 708
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 711
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/EditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic e(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/Button;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic g(Lcom/payumoney/core/ui/PayULoginDialog;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/payumoney/core/ui/PayULoginDialog;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->c()V

    return-void
.end method

.method static synthetic i(Lcom/payumoney/core/ui/PayULoginDialog;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->b()V

    return-void
.end method

.method static synthetic j(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->q:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static newInstance(I)Lcom/payumoney/core/ui/PayULoginDialog;
    .locals 3
    .param p0, "theme"    # I

    .line 98
    new-instance v0, Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {v0}, Lcom/payumoney/core/ui/PayULoginDialog;-><init>()V

    .line 100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string v2, "theme"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/payumoney/core/ui/PayULoginDialog;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object v0
.end method


# virtual methods
.method public initiateDelayResendOTP()V
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 593
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->m:Landroid/os/Handler;

    .line 596
    new-instance v0, Lcom/payumoney/core/ui/PayULoginDialog$9;

    invoke-direct {v0, p0}, Lcom/payumoney/core/ui/PayULoginDialog$9;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->n:Ljava/lang/Runnable;

    .line 606
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->m:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    return-void
.end method

.method public missingParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 446
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->j:I

    .line 111
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 112
    sget v0, Lcom/payumoney/core/R$style;->PayUAppThemedefault:I

    invoke-virtual {p0, v1, v0}, Lcom/payumoney/core/ui/PayULoginDialog;->setStyle(II)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/payumoney/core/ui/PayULoginDialog;->setStyle(II)V

    .line 115
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 144
    sget v0, Lcom/payumoney/core/R$layout;->sdk_activity_login:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "MerchantPassedEmail"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "MerchantPassedPhone"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v3, "EventSource"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "LoginAttempted"

    const-string v5, "clevertap"

    invoke-static {v3, v4, v2, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 153
    sget v2, Lcom/payumoney/core/R$id;->toolbar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 154
    if-eqz v2, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "merchant_name"

    invoke-static {v3, v4}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    if-eqz v3, :cond_0

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v3, "PayUMoney"

    :cond_1
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    :try_start_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneyConfig;->getTextColorPrimary()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 160
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneyConfig;->getTextColorPrimary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_2
    goto :goto_0

    .line 162
    :catch_0
    move-exception v3

    .line 165
    :goto_0
    sget v3, Lcom/payumoney/core/R$drawable;->img_back_arrow:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 166
    new-instance v3, Lcom/payumoney/core/ui/PayULoginDialog$2;

    invoke-direct {v3, p0}, Lcom/payumoney/core/ui/PayULoginDialog$2;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    .line 175
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->a:Landroid/accounts/AccountManager;

    .line 176
    sget v2, Lcom/payumoney/core/R$id;->email:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->b:Landroid/widget/AutoCompleteTextView;

    .line 177
    sget v2, Lcom/payumoney/core/R$id;->password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    .line 178
    sget v2, Lcom/payumoney/core/R$id;->login:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    .line 179
    sget v2, Lcom/payumoney/core/R$id;->opt_message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->e:Landroid/widget/TextView;

    .line 180
    iget-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 181
    iget v3, p0, Lcom/payumoney/core/ui/PayULoginDialog;->j:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 182
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/payumoney/core/ui/PayULoginDialog;->j:I

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 183
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 184
    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v5, Lcom/payumoney/core/R$attr;->colorPrimary:I

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 185
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    .line 186
    iget v3, v4, Landroid/util/TypedValue;->data:I

    .line 187
    sget v4, Lcom/payumoney/core/R$string;->payumoney_color_string:I

    invoke-virtual {p0, v4}, Lcom/payumoney/core/ui/PayULoginDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 190
    :cond_4
    iget-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 194
    iget-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x109000a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;

    invoke-direct {v2, p0}, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 196
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;

    invoke-direct {v2, p0}, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    const-string v1, "default"

    iput-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->g:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/payumoney/core/ui/PayULoginDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/payumoney/core/ui/PayULoginDialog$3;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    new-instance v2, Lcom/payumoney/core/ui/PayULoginDialog$4;

    invoke-direct {v2, p0}, Lcom/payumoney/core/ui/PayULoginDialog$4;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->b:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/payumoney/core/ui/PayULoginDialog$5;

    invoke-direct {v2, p0}, Lcom/payumoney/core/ui/PayULoginDialog$5;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/payumoney/core/ui/PayULoginDialog$6;

    invoke-direct {v2, p0}, Lcom/payumoney/core/ui/PayULoginDialog$6;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/payumoney/core/ui/PayULoginDialog$7;

    invoke-direct {v2, p0}, Lcom/payumoney/core/ui/PayULoginDialog$7;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 295
    sget v1, Lcom/payumoney/core/R$id;->text_view_resend_otp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->l:Landroid/widget/TextView;

    .line 296
    new-instance v2, Lcom/payumoney/core/ui/PayULoginDialog$8;

    invoke-direct {v2, p0}, Lcom/payumoney/core/ui/PayULoginDialog$8;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-direct {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->b()V

    .line 331
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->q:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->q:Landroid/content/BroadcastReceiver;

    .line 350
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 351
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 531
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 532
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->i:Lcom/payumoney/core/listener/OnUserLoginListener;

    invoke-interface {v0}, Lcom/payumoney/core/listener/OnUserLoginListener;->onDismissLoginDialog()V

    .line 533
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->e:Landroid/widget/TextView;

    const-string v1, "OTP can\'t be send"

    invoke-direct {p0, v0, v1}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Lcom/payumoney/core/response/ErrorResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payumoney/core/ui/PayULoginDialog;->updateUiOnError(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public onOTPRequestSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 417
    const-string v0, "phone"

    const-string v1, "result"

    iget-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/payumoney/core/utils/SdkHelper;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "OTP sent to your mobile number"

    if-eqz v2, :cond_0

    .line 418
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/payumoney/core/ui/PayULoginDialog;->b(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 423
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 424
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 425
    iget-object v3, p0, Lcom/payumoney/core/ui/PayULoginDialog;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OTP sent to your mobile number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/payumoney/core/ui/PayULoginDialog;->b(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/payumoney/core/ui/PayULoginDialog;->b(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_2
    :goto_0
    goto :goto_1

    .line 431
    :catch_0
    move-exception v0

    .line 435
    :goto_1
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->initiateDelayResendOTP()V

    .line 436
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 612
    packed-switch p1, :pswitch_data_0

    .line 632
    return-void

    .line 615
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x0

    const-string v2, "otp_request_api_tag"

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->c()V

    .line 621
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v3, p0, Lcom/payumoney/core/ui/PayULoginDialog;->o:Ljava/lang/String;

    invoke-virtual {v0, p0, v3, v2}, Lcom/payumoney/core/PayUmoneySDK;->requestOTPForLogin(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 626
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v3, p0, Lcom/payumoney/core/ui/PayULoginDialog;->o:Ljava/lang/String;

    invoke-virtual {v0, p0, v3, v2}, Lcom/payumoney/core/PayUmoneySDK;->requestOTPForLogin(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 629
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .line 119
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 120
    invoke-virtual {p0}, Lcom/payumoney/core/ui/PayULoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/payumoney/core/ui/PayULoginDialog$1;

    invoke-direct {v1, p0}, Lcom/payumoney/core/ui/PayULoginDialog$1;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 336
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 338
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 355
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 357
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->f:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    :cond_0
    return-void
.end method

.method public setLoginDialogListener(Lcom/payumoney/core/listener/PayULoginDialogListener;)V
    .locals 0
    .param p1, "dialogDismissListener"    # Lcom/payumoney/core/listener/PayULoginDialogListener;

    .line 455
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->k:Lcom/payumoney/core/listener/PayULoginDialogListener;

    .line 456
    return-void
.end method

.method public setLoginListener(Lcom/payumoney/core/listener/OnUserLoginListener;)V
    .locals 0
    .param p1, "onUserLoginListener"    # Lcom/payumoney/core/listener/OnUserLoginListener;

    .line 469
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog;->i:Lcom/payumoney/core/listener/OnUserLoginListener;

    .line 470
    return-void
.end method

.method public updateUiOnError(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->d:Landroid/widget/Button;

    sget v1, Lcom/payumoney/core/R$string;->login:I

    const/4 v2, 0x0

    const/16 v3, 0x96

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Landroid/view/View;ZII)V

    .line 463
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 466
    return-void
.end method
