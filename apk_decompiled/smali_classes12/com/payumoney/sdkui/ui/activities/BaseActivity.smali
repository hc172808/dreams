.class public abstract Lcom/payumoney/sdkui/ui/activities/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/events/FragmentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;,
        Lcom/payumoney/sdkui/ui/activities/BaseActivity$TermCondWebViewClient;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Landroid/app/ProgressDialog;

.field g:I

.field public h:Z

.field private i:Landroidx/appcompat/widget/Toolbar;

.field private j:Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;

.field private k:Landroid/content/IntentFilter;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->b:Z

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->c:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->d:Ljava/lang/String;

    .line 64
    const-string v0, "0"

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->e:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->g:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 530
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 532
    sget v1, Lcom/payumoney/sdkui/R$string;->no_internet_connection:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 536
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->e()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 109
    sget v0, Lcom/payumoney/sdkui/R$drawable;->img_back_arrow:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneyConfig;->getTextColorPrimary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 113
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->i:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 507
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v1, "reason"

    const-string v2, "cancelled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PaymentAbandoned"

    const-string v3, "clevertap"

    invoke-static {v1, v2, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private e()V
    .locals 2

    .line 516
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clevertap"

    invoke-static {v0, v1}, Lcom/payumoney/core/analytics/LogAnalytics;->pushAllPendingEvents(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .line 180
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 181
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payumoney/core/PayUmoneyConfig;->getTextColorPrimary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 183
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method protected b()V
    .locals 1

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->b(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 572
    if-nez p1, :cond_1

    .line 573
    const-string p1, "merchant_name"

    invoke-static {p0, p1}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 574
    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "PayUMoney"

    .line 577
    :cond_1
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a(Ljava/lang/String;)V

    .line 578
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->c()V

    .line 579
    return-void
.end method

.method public clearAllFragments()V
    .locals 4

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity$2;-><init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 319
    :cond_0
    return-void
.end method

.method public displayTerms(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 322
    const-string v0, "http://www.citruspay.com/citrusbanktnc-lite.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/payumoney/sdkui/R$style;->Local_Base_Theme_AppCompat_Dialog:I

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 324
    sget v2, Lcom/payumoney/sdkui/R$layout;->layout_terms_condition:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 325
    sget v2, Lcom/payumoney/sdkui/R$id;->web_view:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 326
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$TermCondWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/payumoney/sdkui/ui/activities/BaseActivity$TermCondWebViewClient;-><init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;Lcom/payumoney/sdkui/ui/activities/BaseActivity$1;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 328
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 329
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 330
    return-void
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->e:Ljava/lang/String;

    return-object v0

    .line 285
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->c:Ljava/lang/String;

    return-object v0

    .line 253
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->d:Ljava/lang/String;

    return-object v0

    .line 262
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->g:I

    return v0
.end method

.method public isDataConnectionAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 520
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 521
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 523
    :goto_0
    if-nez v0, :cond_1

    .line 524
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a(Landroid/content/Context;)V

    .line 526
    :cond_1
    return v0
.end method

.method public navigateTo(Landroidx/fragment/app/Fragment;I)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "screenName"    # I

    .line 188
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->b()V

    .line 192
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 194
    sget v1, Lcom/payumoney/sdkui/R$id;->container:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 195
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 196
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 198
    :cond_0
    return-void
.end method

.method public navigateWithReplace(Landroidx/fragment/app/Fragment;I)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "screenName"    # I

    .line 202
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->b()V

    .line 206
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 208
    sget v1, Lcom/payumoney/sdkui/R$id;->container:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 209
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 211
    :cond_0
    return-void
.end method

.method public navigateWithReplaceBackStack(Landroidx/fragment/app/Fragment;I)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "screenName"    # I

    .line 216
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->b()V

    .line 219
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 221
    sget v1, Lcom/payumoney/sdkui/R$id;->container:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 222
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 223
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 224
    return-void
.end method

.method public onBackPressed()V
    .locals 17

    .line 340
    move-object/from16 v1, p0

    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BaseActivity$ onBackPressed"

    invoke-virtual {v0, v4, v3}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v3, "EMIAddCard"

    const-string v4, "EmiTenure"

    const-string v6, "VerifyOTP"

    const-string v8, "clevertap"

    const-string v9, "BackButtonClicked"

    const-string v10, "CVVEntry"

    const-string v11, "AddCard"

    const/16 v12, 0xb

    const-string v13, "SDK"

    const-string v14, "EventSource"

    const/16 v15, 0xc

    const-string v5, "page"

    const/4 v7, 0x1

    if-le v0, v7, :cond_9

    .line 344
    iget-boolean v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->h:Z

    if-nez v0, :cond_5

    .line 349
    iget-object v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v2, v16, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v15, :cond_5

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    invoke-virtual {v0, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v7

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 354
    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_0
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_1

    .line 356
    invoke-virtual {v0, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    :cond_1
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v10, 0x6

    if-ne v2, v10, :cond_2

    .line 358
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    :cond_2
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xe

    if-ne v2, v6, :cond_3

    .line 361
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 362
    :cond_3
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    .line 363
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9, v0, v8}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 371
    :cond_5
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BaseActivity$stack top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseActivity$stack bot = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget-boolean v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->b:Z

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    .line 374
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    .line 376
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneyConfig;->isExitConfirmationDisabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->showCancelTransactionMessage()V

    goto/16 :goto_3

    .line 381
    :cond_6
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->userCancelledTransaction()V

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->d()V

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->e()V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->finish()V

    goto/16 :goto_3

    .line 392
    :cond_7
    iget-boolean v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->h:Z

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    .line 395
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->popBackStackTillTag(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 399
    :cond_8
    :try_start_0
    iget-object v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->b()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    goto :goto_1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v2

    const-string v3, "IndexOutOfBoundsException"

    invoke-virtual {v2, v3, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 405
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->l:Z

    if-nez v0, :cond_11

    .line 406
    invoke-super/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto/16 :goto_3

    .line 413
    :cond_9
    iget-object v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_10

    .line 416
    iget-object v0, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v15, :cond_a

    .line 420
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneyConfig;->isExitConfirmationDisabled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->showCancelTransactionMessage()V

    .line 423
    return-void

    .line 427
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 428
    invoke-virtual {v0, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 431
    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 432
    :cond_b
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v12, :cond_c

    .line 433
    invoke-virtual {v0, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 434
    :cond_c
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x6

    if-ne v2, v7, :cond_d

    .line 435
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 436
    :cond_d
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xe

    if-ne v2, v6, :cond_e

    .line 437
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 438
    :cond_e
    iget-object v2, v1, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_f

    .line 439
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_f
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9, v0, v8}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 447
    :cond_10
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->userCancelledTransaction()V

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->d()V

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->e()V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->finish()V

    .line 458
    :cond_11
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->setContentView(I)V

    .line 79
    sget v0, Lcom/payumoney/sdkui/R$id;->custom_toolbar:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->i:Landroidx/appcompat/widget/Toolbar;

    .line 81
    new-instance v0, Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;-><init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->j:Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->k:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->i:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 86
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 122
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneyConfig;->isEnableReviewOrder()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 124
    sget v2, Lcom/payumoney/sdkui/R$menu;->review_order_menu:I

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    sget v0, Lcom/payumoney/sdkui/R$string;->order_details_btn_text:I

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    sget v2, Lcom/payumoney/sdkui/R$id;->review_order_menu:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 131
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 134
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/payumoney/core/PayUmoneyConfig;->setReviewOrderMenuText(Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$attr;->colorPrimary:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 140
    iget v0, v0, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 143
    :cond_0
    const/4 v0, -0x1

    .line 145
    :goto_0
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/payumoney/core/PayUmoneyConfig;->setReviewOrderToolbarBgColor(I)V

    .line 147
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/payumoney/core/PayUmoneyConfig;->setReviewOrderToolbarTextColor(I)V

    .line 149
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v0

    new-instance v2, Lcom/payumoney/sdkui/ui/activities/BaseActivity$1;

    invoke-direct {v2, p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity$1;-><init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;)V

    invoke-virtual {v0, v2}, Lcom/payumoney/core/PayUmoneyConfig;->setReviewOrderImpl(Lcom/payumoney/core/listener/ReviewOrderImpl;)V

    .line 159
    :cond_1
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 167
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->onBackPressed()V

    .line 169
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    sget v1, Lcom/payumoney/sdkui/R$id;->review_order_menu:I

    if-ne v0, v1, :cond_1

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payumoney/sdkui/ui/activities/ReviewOrderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    iget v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->g:I

    const-string v2, "key_style"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->j:Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->j:Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;

    .line 104
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->l:Z

    .line 106
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->j:Lcom/payumoney/sdkui/ui/activities/BaseActivity$NetworkChangeReceiver;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->k:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->l:Z

    .line 96
    return-void
.end method

.method public popBackStackTillTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 270
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 270
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 278
    :cond_1
    return-void
.end method

.method public showCancelTransactionMessage()V
    .locals 4

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 467
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$string;->are_you_sure_you_want_to_cancel_transaction:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 471
    new-instance v2, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity$3;-><init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;Ljava/util/HashMap;)V

    const-string v3, "Yes"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 490
    new-instance v2, Lcom/payumoney/sdkui/ui/activities/BaseActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity$4;-><init>(Lcom/payumoney/sdkui/ui/activities/BaseActivity;Ljava/util/HashMap;)V

    const-string v0, "No"

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 500
    return-void
.end method

.method public showProgressDialog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "cancelable"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 294
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 295
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 301
    :cond_1
    :goto_0
    return-void
.end method

.method public updateProgressMsg(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/activities/BaseActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    invoke-static {}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->getInstance()Lcom/payumoney/sdkui/ui/utils/PPLogger;

    move-result-object v1

    const-string v2, "IllegalArgumentException"

    invoke-virtual {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/PPLogger;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 312
    :goto_0
    return-void
.end method
