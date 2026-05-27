.class public Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;
.super Lcom/payumoney/sdkui/ui/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/payumoney/core/listener/OnLoginErrorListener;
.implements Lcom/payumoney/core/listener/OnOTPRequestSendListener;


# instance fields
.field private a:Landroid/view/View;

.field private m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

.field private n:Landroid/widget/EditText;

.field private final o:Ljava/lang/String;

.field private p:Lcom/payumoney/core/listener/OnUserLoginListener;

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/os/Handler;

.field private u:Ljava/lang/Runnable;

.field private v:D

.field private final w:I

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;-><init>()V

    .line 64
    const-string v0, "ValidateWalletFragment"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->o:Ljava/lang/String;

    .line 73
    const/16 v0, 0x7b

    iput v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->w:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->x:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 445
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 446
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 449
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 452
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 453
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/payumoney/core/R$color;->primary_green:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 457
    return-void
.end method

.method private a(Landroid/view/View;ZII)V
    .locals 0

    .line 383
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 386
    instance-of p2, p1, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    if-eqz p2, :cond_0

    .line 387
    check-cast p1, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {p1, p3}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setText(I)V

    .line 389
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;Landroid/view/View;ZII)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;ZII)V

    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    const/4 v2, 0x0

    const/16 v3, 0x96

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;ZII)V

    .line 366
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->p:Lcom/payumoney/core/listener/OnUserLoginListener;

    const-string v2, "validate_wallet_for_nitro_flow"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/payumoney/core/PayUmoneySDK;->validateAccount(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/listener/OnUserLoginListener;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private a()Z
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 230
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 393
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 394
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->s:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    return-void
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 467
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 468
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const/high16 p2, -0x10000

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 472
    return-void
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->q:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->x:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$8;-><init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->x:Landroid/content/BroadcastReceiver;

    .line 550
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 551
    const v1, 0x98967f

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 552
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 555
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->n:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic e(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->x:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static newInstance()Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;
    .locals 2

    .line 80
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v0
.end method


# virtual methods
.method public hideKeyboardIfShown()V
    .locals 3

    .line 241
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 243
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 245
    if-nez v1, :cond_0

    .line 246
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 248
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 249
    return-void
.end method

.method public initConvenieneceFee(Landroid/view/View;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .line 260
    sget v0, Lcom/payumoney/sdkui/R$id;->quick_pay_balance:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->g:Landroid/widget/TextView;

    .line 261
    sget v0, Lcom/payumoney/sdkui/R$id;->r_amount_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->l:Landroid/widget/LinearLayout;

    .line 262
    sget v0, Lcom/payumoney/sdkui/R$id;->l_convenience_fee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->f:Landroid/widget/LinearLayout;

    .line 263
    sget v0, Lcom/payumoney/sdkui/R$id;->subtotal_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->c:Landroid/widget/TextView;

    .line 264
    sget v0, Lcom/payumoney/sdkui/R$id;->convenience_fee_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->d:Landroid/widget/TextView;

    .line 265
    sget v0, Lcom/payumoney/sdkui/R$id;->total_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->e:Landroid/widget/TextView;

    .line 266
    sget v0, Lcom/payumoney/sdkui/R$id;->show_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->h:Landroid/widget/TextView;

    .line 267
    sget v0, Lcom/payumoney/sdkui/R$id;->hide_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->i:Landroid/widget/TextView;

    .line 268
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setUpUIConvenienceFee()V

    .line 269
    return-void
.end method

.method public initiateDelayResendOTP()V
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->u:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->t:Landroid/os/Handler;

    .line 405
    new-instance v0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;-><init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->u:Ljava/lang/Runnable;

    .line 415
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->t:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    return-void
.end method

.method public missingParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 329
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->btn_pay_now_otp_screen:I

    if-ne v0, v1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payumoney/core/R$string;->disconnected_from_internet:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/payumoney/sdkui/R$id;->text_view_resend_otp:I

    if-ne v0, v1, :cond_2

    .line 302
    const-string v0, "ValidateWalletFragment"

    const-string v1, "resendOTPClicked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->q:Ljava/lang/String;

    const-string v2, "otp_request_api_tag"

    invoke-virtual {v0, p0, v1, v2}, Lcom/payumoney/core/PayUmoneySDK;->requestOTPForLogin(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->b()V

    .line 309
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->r:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;)V

    .line 311
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "amount"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->b:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->q:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    sget v0, Lcom/payumoney/sdkui/R$layout;->fragment_validate_wallet:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a:Landroid/view/View;

    .line 98
    sget v2, Lcom/payumoney/sdkui/R$id;->edittext_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->n:Landroid/widget/EditText;

    .line 99
    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$1;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->n:Landroid/widget/EditText;

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$2;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$2;-><init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 139
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a:Landroid/view/View;

    sget v2, Lcom/payumoney/sdkui/R$id;->otp_message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->r:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a:Landroid/view/View;

    sget v2, Lcom/payumoney/sdkui/R$id;->text_view_resend_otp:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->s:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a:Landroid/view/View;

    sget v2, Lcom/payumoney/sdkui/R$id;->btn_pay_now_otp_screen:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    .line 142
    sget v2, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    invoke-virtual {p0, v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;->setClickable(Z)V

    .line 147
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->b()V

    .line 150
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    sget v2, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    const/16 v3, 0x96

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;ZII)V

    .line 152
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->initConvenieneceFee(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setAmount(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a:Landroid/view/View;

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$3;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$3;-><init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$4;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$4;-><init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->v:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->updateConvenienceFee(DD)V

    .line 194
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->isMobileNumberRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->c()V

    .line 206
    :cond_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->q:Ljava/lang/String;

    const-string v2, "otp_request_api_tag"

    invoke-virtual {v0, p0, v1, v2}, Lcom/payumoney/core/PayUmoneySDK;->requestOTPForLogin(Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->x:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->x:Landroid/content/BroadcastReceiver;

    .line 435
    :cond_0
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onDestroy()V

    .line 436
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 421
    const/4 v0, 0x0

    sput-object v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->moreBankPaymentEntity:Lcom/payumoney/core/entity/PaymentEntity;

    .line 422
    invoke-super {p0}, Lcom/payumoney/sdkui/ui/fragments/BaseFragment;->onDetach()V

    .line 423
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    const/16 v2, 0xff

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;ZII)V

    .line 321
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 324
    :cond_0
    return-void
.end method

.method public onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Lcom/payumoney/core/response/ErrorResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->m:Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    sget v1, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    const/16 v2, 0xff

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;ZII)V

    .line 339
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    :cond_0
    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->r:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public onOTPRequestSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 347
    const-string v0, "phone"

    const-string v1, "result"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->r:Landroid/widget/TextView;

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

    invoke-direct {p0, v3, v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->r:Landroid/widget/TextView;

    const-string v1, "OTP sent to your mobile number"

    invoke-direct {p0, v0, v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_1
    :goto_0
    goto :goto_1

    .line 356
    :catch_0
    move-exception v0

    .line 359
    :goto_1
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->initiateDelayResendOTP()V

    .line 360
    return-void
.end method

.method public setConvenienceFee(D)V
    .locals 0
    .param p1, "convenienceFee"    # D

    .line 256
    iput-wide p1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->v:D

    .line 257
    return-void
.end method

.method public setListener(Lcom/payumoney/core/listener/OnUserLoginListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnUserLoginListener;

    .line 252
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->p:Lcom/payumoney/core/listener/OnUserLoginListener;

    .line 253
    return-void
.end method

.method public setUpUIConvenienceFee()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$5;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$5;-><init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$6;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$6;-><init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-void
.end method
