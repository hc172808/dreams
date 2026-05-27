.class public Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/payu/socketverification/interfaces/PayUSocketEventListener;
.implements Lcom/payu/upisdk/b/a;


# static fields
.field public static d:Landroid/view/View;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/payu/upisdk/upiintent/c;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payu/upisdk/upiintent/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/payu/upisdk/upiintent/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

.field private g:Ljava/lang/String;

.field private h:Lcom/payu/upisdk/PaymentOption;

.field private i:Landroid/webkit/WebView;

.field private j:Lcom/payu/upisdk/bean/UpiConfig;

.field private k:Z

.field private l:Lcom/payu/upisdk/upiintent/d;

.field private o:Lcom/payu/socketverification/widgets/PayUProgressDialog;

.field private p:Lcom/payu/socketverification/socket/SocketPaymentResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 53
    sget-object v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->n:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;)V
    .locals 1

    .line 32222
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->o:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;

    invoke-virtual {v0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32223
    iget-object p0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->o:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {p0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->dismiss()V

    .line 53
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "URL web "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Postdata web "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 445
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->i:Landroid/webkit/WebView;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 450
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->i:Landroid/webkit/WebView;

    new-instance v1, Lcom/payu/upisdk/upi/a;

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-direct {v1, p0, v2, v3}, Lcom/payu/upisdk/upi/a;-><init>(Landroid/app/Activity;Lcom/payu/payuanalytics/analytics/PayUAnalytics;Lcom/payu/upisdk/bean/UpiConfig;)V

    const-string v2, "PayU"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->i:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->i:Landroid/webkit/WebView;

    new-instance v1, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$1;

    invoke-direct {v1, p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$1;-><init>(Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 202
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->o:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/payu/socketverification/widgets/PayUProgressDialog;

    sget-object v1, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 5025
    iget-object v2, v2, Lcom/payu/upisdk/b;->b:Landroid/view/View;

    .line 211
    invoke-direct {v0, v1, v2}, Lcom/payu/socketverification/widgets/PayUProgressDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->o:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->o:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setCancelable(Z)V

    .line 213
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 6025
    iget-object v0, v0, Lcom/payu/upisdk/b;->b:Landroid/view/View;

    .line 213
    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->o:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    sget-object v1, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setPayUDialogSettings(Landroid/content/Context;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->o:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->show()V

    .line 216
    return-void
.end method

.method private d()V
    .locals 6

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->b:Ljava/util/ArrayList;

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    const-string v1, "upi://pay?"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 348
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 349
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 350
    iget-object v4, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->b:Ljava/util/ArrayList;

    new-instance v5, Lcom/payu/upisdk/upiintent/a;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v3, v2, v1}, Lcom/payu/upisdk/upiintent/a;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 354
    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Err 1002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 508
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 31081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 508
    if-eqz v0, :cond_0

    .line 509
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 32081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 509
    const/16 v1, 0x3ea

    const-string v2, "MERCHANT_INFO_NOT_PRESENT"

    invoke-virtual {v0, v1, v2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->finish()V

    .line 511
    return-void
.end method


# virtual methods
.method public final a(Lcom/payu/upisdk/upiintent/d;)V
    .locals 7

    .line 289
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 290
    if-nez p1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e()V

    return-void

    .line 292
    :cond_0
    nop

    .line 14503
    nop

    .line 15074
    iget-object v0, p1, Lcom/payu/upisdk/upiintent/d;->a:Ljava/lang/String;

    .line 14503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 15082
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->b:Ljava/lang/String;

    .line 14503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 15090
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->c:Ljava/lang/String;

    .line 14503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 15098
    iget-object v0, v0, Lcom/payu/upisdk/upiintent/d;->d:Ljava/lang/String;

    .line 14503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 292
    :goto_0
    if-nez v0, :cond_5

    .line 293
    nop

    .line 15178
    iget v0, p1, Lcom/payu/upisdk/upiintent/d;->n:I

    .line 293
    if-nez v0, :cond_4

    .line 16162
    iget-object v0, p1, Lcom/payu/upisdk/upiintent/d;->l:Ljava/lang/String;

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    nop

    .line 17162
    iget-object p1, p1, Lcom/payu/upisdk/upiintent/d;->l:Ljava/lang/String;

    .line 294
    invoke-static {p1}, Lcom/payu/upisdk/util/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 295
    if-nez p1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e()V

    return-void

    .line 299
    :cond_2
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 18081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 299
    if-eqz v0, :cond_3

    .line 300
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 19081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_3
    return-void

    .line 303
    :cond_4
    invoke-direct {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e()V

    return-void

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    sget-object v3, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    if-ne v0, v3, :cond_6

    .line 307
    nop

    .line 308
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    const-string v0, "com.google.android.apps.nbu.paisa.user"

    invoke-virtual {p1, v0}, Lcom/payu/upisdk/upiintent/c;->a(Ljava/lang/String;)V

    .line 309
    return-void

    :cond_6
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    sget-object v3, Lcom/payu/upisdk/PaymentOption;->UPI_INTENT:Lcom/payu/upisdk/PaymentOption;

    if-ne v0, v3, :cond_b

    .line 310
    nop

    .line 19082
    iget-object v0, p1, Lcom/payu/upisdk/upiintent/d;->b:Ljava/lang/String;

    .line 310
    sput-object v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->m:Ljava/lang/String;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->c:Ljava/util/ArrayList;

    .line 312
    nop

    .line 19122
    iget-object v0, p1, Lcom/payu/upisdk/upiintent/d;->i:Ljava/util/List;

    .line 312
    if-eqz v0, :cond_9

    .line 20122
    iget-object v0, p1, Lcom/payu/upisdk/upiintent/d;->i:Ljava/util/List;

    .line 312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 313
    nop

    .line 21122
    iget-object v0, p1, Lcom/payu/upisdk/upiintent/d;->i:Ljava/util/List;

    .line 313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/payu/upisdk/upiintent/a;

    .line 314
    iget-object v4, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 315
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 316
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/payu/upisdk/upiintent/a;

    .line 317
    invoke-virtual {v5, v3}, Lcom/payu/upisdk/upiintent/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 318
    nop

    .line 22041
    iget-object v6, v3, Lcom/payu/upisdk/upiintent/a;->a:Ljava/lang/String;

    .line 22045
    iput-object v6, v5, Lcom/payu/upisdk/upiintent/a;->a:Ljava/lang/String;

    .line 319
    iget-object v6, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 322
    :cond_7
    goto :goto_2

    .line 323
    :cond_8
    goto :goto_1

    .line 325
    :cond_9
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 326
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-static {v0, p1, v3}, Lcom/payu/upisdk/a;->a(Ljava/util/ArrayList;Lcom/payu/upisdk/upiintent/d;Lcom/payu/upisdk/bean/UpiConfig;)Lcom/payu/upisdk/a;

    move-result-object p1

    .line 328
    sget v0, Lcom/payu/upisdk/R$style;->UpiSdkFullScreenDialogStyle:I

    invoke-virtual {p1, v2, v0}, Lcom/payu/upisdk/a;->setStyle(II)V

    .line 329
    invoke-virtual {p1, v1}, Lcom/payu/upisdk/a;->setRetainInstance(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "packageList"

    invoke-virtual {p1, v0, v1}, Lcom/payu/upisdk/a;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 333
    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v3}, Lcom/payu/upisdk/PaymentOption;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_payment_app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v3}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v4}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    invoke-virtual {v0, p1}, Lcom/payu/upisdk/upiintent/c;->a(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 366
    if-eqz p1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v2}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v3}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "back_button_cancel"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    const/4 v0, 0x0

    const-string v1, "cancel"

    invoke-virtual {p1, v1, v0}, Lcom/payu/upisdk/upiintent/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 371
    :cond_1
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    const-string v0, "No Upi apps present and collect disabled."

    if-eqz p1, :cond_2

    .line 372
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v2}, Lcom/payu/upisdk/PaymentOption;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v3}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v4}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 373
    :cond_2
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    const-string v1, "fail"

    invoke-virtual {p1, v1, v0}, Lcom/payu/upisdk/upiintent/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public errorReceived(ILjava/lang/String;)V
    .locals 3
    .param p1, "issueCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Error Received "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 477
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    .line 479
    new-instance v0, Lcom/payu/upisdk/upiintent/c;

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/payu/upisdk/upiintent/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    .line 480
    const/4 v1, 0x0

    const-string v2, "cancel"

    invoke-virtual {v0, v2, v1}, Lcom/payu/upisdk/upiintent/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 483
    :cond_0
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 29081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 483
    if-eqz v0, :cond_1

    .line 484
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 30081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 484
    nop

    .end local p1    # "issueCode":I
    .end local p2    # "errorMessage":Ljava/lang/String;
    invoke-virtual {v0, p1, p2}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    return-void

    .line 486
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Upi callback class should not be null onPaymentSuccess"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public getSocketResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p2, "payuResponse"    # Ljava/lang/String;
    .param p3, "resultType"    # Ljava/lang/String;

    .line 454
    nop

    .end local p3    # "resultType":Ljava/lang/String;
    const-string p1, "success"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    const-string p4, "trxn_status_upi_sdk"

    const-string v0, "Class Name: "

    if-eqz p1, :cond_1

    .line 455
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 25081
    iget-object p1, p1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 455
    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v1}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v2}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "success_transaction"

    invoke-static {v0, p4, v3, v1, v2}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 457
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 26081
    iget-object p1, p1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 457
    invoke-virtual {p1, p2, p3}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Upi callback class should not be null onPaymentSuccess"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_1
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 27081
    iget-object p1, p1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 463
    if-eqz p1, :cond_2

    .line 464
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v1}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v2}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failure_transaction"

    invoke-static {v0, p4, v3, v1, v2}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 465
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 28081
    iget-object p1, p1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 465
    nop

    .end local p2    # "payuResponse":Ljava/lang/String;
    invoke-virtual {p1, p2, p3}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Upi callback class should not be null onPaymentFailure"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 471
    :goto_0
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->finish()V

    .line 472
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 229
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    nop

    .end local p1    # "requestCode":I
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class Name: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Result code "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Dataa  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Is UpiDisabled ... "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 6054
    iget-object v1, v1, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 232
    invoke-virtual {v1}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiPushDisabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 233
    nop

    .end local p2    # "resultCode":I
    const/4 p1, -0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 234
    nop

    .end local p3    # "data":Landroid/content/Intent;
    const-string p1, "Status"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v3}, Lcom/payu/upisdk/PaymentOption;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_payment_app_response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v3}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v4}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v2, p1, v3, v4}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 236
    nop

    .line 6252
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v2}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v3}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "upi_socket"

    const-string v5, "push_enabled"

    invoke-static {p3, v4, v5, v2, v3}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 6253
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 7054
    iget-object p2, p2, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 6253
    invoke-virtual {p2}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiPushDisabled()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 8054
    iget-object p2, p2, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 6253
    invoke-virtual {p2}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiPushDisabled()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6255
    nop

    .line 8267
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v1}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v2}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "verify_type"

    const-string v4, "socket"

    invoke-static {p3, v3, v4, v1, v2}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 8268
    new-instance p2, Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-direct {p2}, Lcom/payu/socketverification/socket/SocketPaymentResponse;-><init>()V

    iput-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->p:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 8269
    nop

    .line 8277
    iget-object p3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 9098
    iget-object p3, p3, Lcom/payu/upisdk/upiintent/d;->d:Ljava/lang/String;

    .line 8277
    invoke-virtual {p2, p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setReferenceId(Ljava/lang/String;)V

    .line 8278
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->p:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    iget-object p3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 9114
    iget-object p3, p3, Lcom/payu/upisdk/upiintent/d;->f:Ljava/lang/String;

    .line 8278
    invoke-virtual {p2, p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setTxnId(Ljava/lang/String;)V

    .line 8279
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->p:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    iget-object p3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 10054
    iget-object p3, p3, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 8279
    invoke-virtual {p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiPushDisabled()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setUpiPushDisabled(Ljava/lang/String;)V

    .line 8280
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->p:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    iget-object p3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 11054
    iget-object p3, p3, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 8280
    invoke-virtual {p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getUpiServicePollInterval()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setUpiServicePollInterval(Ljava/lang/String;)V

    .line 8281
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->p:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    iget-object p3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 12054
    iget-object p3, p3, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 8281
    invoke-virtual {p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getSdkUpiPushExpiry()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setSdkUpiPushExpiry(Ljava/lang/String;)V

    .line 8282
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->p:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    iget-object p3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 13054
    iget-object p3, p3, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 8282
    invoke-virtual {p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getSdkUpiVerificationInterval()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setSdkUpiVerificationInterval(Ljava/lang/String;)V

    .line 8283
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->p:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    iget-object p3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->l:Lcom/payu/upisdk/upiintent/d;

    .line 14054
    iget-object p3, p3, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 8283
    invoke-virtual {p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getPushServiceUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setPushServiceUrl(Ljava/lang/String;)V

    .line 8270
    invoke-static {}, Lcom/payu/socketverification/socket/SocketHandler;->getInstance()Lcom/payu/socketverification/socket/SocketHandler;

    move-result-object p2

    iget-object p3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->p:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-virtual {p2, p3, p0, p0}, Lcom/payu/socketverification/socket/SocketHandler;->createSocket(Lcom/payu/socketverification/socket/SocketPaymentResponse;Landroid/app/Activity;Lcom/payu/socketverification/interfaces/PayUSocketEventListener;)V

    .line 6255
    goto :goto_0

    .line 6257
    :cond_0
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v2}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v3}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "long_polling_from"

    const-string v5, "verify_using_http"

    invoke-static {p3, v4, v5, v2, v3}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 6258
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    invoke-virtual {p2, p1, v1}, Lcom/payu/upisdk/upiintent/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Return "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 239
    return-void

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Cancel return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 241
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    const-string p2, "cancel"

    invoke-virtual {p1, p2, v1}, Lcom/payu/upisdk/upiintent/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 397
    nop

    .line 23405
    new-instance v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$2;

    invoke-direct {v0, p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity$2;-><init>(Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;)V

    .line 23422
    sget v1, Lcom/payu/upisdk/R$string;->do_you_really_want_to_cancel_the_transaction:I

    invoke-virtual {p0, v1}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ok"

    const-string v3, "Cancel"

    invoke-static {p0, v0, v2, v3, v1}, Lcom/payu/upisdk/util/b;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 23423
    sget-object v1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 24081
    iget-object v1, v1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 23423
    invoke-virtual {v1, v0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 23424
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 398
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    nop

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 77
    const-string v0, "upiConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/payu/upisdk/bean/UpiConfig;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    .line 78
    if-eqz p1, :cond_5

    .line 79
    invoke-virtual {p1}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {p1}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v0}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantResponseTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {p1}, Lcom/payu/upisdk/bean/UpiConfig;->getPaymentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->g:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 1025
    iget-object v0, v0, Lcom/payu/upisdk/b;->b:Landroid/view/View;

    .line 83
    invoke-virtual {p1, v0}, Lcom/payu/upisdk/bean/UpiConfig;->setProgressDialogCustomView(Landroid/view/View;)V

    .line 84
    nop

    .line 1098
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->g:Ljava/lang/String;

    const-string v0, "upi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "upi_generic"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1099
    :cond_0
    sget p1, Lcom/payu/upisdk/R$style;->upi_sdk_opaque_screen:I

    invoke-virtual {p0, p1}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->setTheme(I)V

    .line 85
    :cond_1
    sget p1, Lcom/payu/upisdk/R$layout;->activity_payment_response:I

    invoke-virtual {p0, p1}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "local_cache_analytics"

    invoke-static {p1, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 87
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->n:Ljava/lang/ref/WeakReference;

    .line 88
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->k:Z

    .line 89
    sget v2, Lcom/payu/upisdk/R$id;->wvCollect:I

    invoke-virtual {p0, v2}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->i:Landroid/webkit/WebView;

    .line 90
    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v5}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v6}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "payment_option"

    invoke-static {v3, v7, v4, v5, v6}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 91
    nop

    .line 1107
    .end local p0    # "this":Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;
    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "ppintent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "tez"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "sampay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "intent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    :goto_0
    const-string v0, "Payment Started for UpiCollect >>> "

    const-string v1, "Class Name: "

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 1170
    :pswitch_0
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->SAMSUNGPAY:Lcom/payu/upisdk/PaymentOption;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    .line 1171
    new-instance v0, Lcom/payu/upisdk/a/a;

    invoke-direct {v0, p1}, Lcom/payu/upisdk/a/a;-><init>(Lcom/payu/upisdk/PaymentOption;)V

    invoke-virtual {v0}, Lcom/payu/upisdk/a/a;->a()Lcom/payu/upisdk/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/payu/upisdk/c/b;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1161
    :pswitch_1
    sget-object v0, Lcom/payu/upisdk/PaymentOption;->UPI_INTENT:Lcom/payu/upisdk/PaymentOption;

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    .line 1162
    new-instance v0, Lcom/payu/upisdk/upiintent/c;

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/payu/upisdk/upiintent/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    .line 1163
    invoke-direct {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->d()V

    .line 1165
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a:Lcom/payu/upisdk/upiintent/c;

    .line 3083
    invoke-virtual {v0}, Lcom/payu/upisdk/upiintent/c;->a()V

    .line 3084
    new-instance v1, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    invoke-direct {v1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;-><init>()V

    .line 3085
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setHttpMethod(Ljava/lang/String;)V

    .line 3086
    iget-object v2, v0, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    const-string v3, "&txn_s2s_flow=2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3087
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setPostData(Ljava/lang/String;)V

    .line 3088
    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setContentType(Ljava/lang/String;)V

    .line 3089
    sget-object v2, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 4033
    iget-object v2, v2, Lcom/payu/upisdk/b;->d:Lcom/payu/upisdk/bean/UpiConfig;

    .line 3089
    invoke-virtual {v2}, Lcom/payu/upisdk/bean/UpiConfig;->getPostUrl()Ljava/lang/String;

    move-result-object v2

    .line 3090
    invoke-virtual {v1, v2}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setUrl(Ljava/lang/String;)V

    .line 3091
    new-instance v2, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;

    const-string v3, "initiate"

    invoke-direct {v2, v0, v3}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;-><init>(Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v5, [Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    aput-object v1, v3, p1

    invoke-virtual {v2, v0, v3}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1167
    goto/16 :goto_1

    .line 1147
    :pswitch_2
    sput-boolean v5, Lcom/payu/upisdk/Upi;->isRecreating:Z

    .line 1148
    invoke-direct {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->b()V

    .line 1149
    invoke-direct {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->c()V

    .line 1150
    iput-boolean v5, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->k:Z

    .line 1151
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->UPI_COLLECT_GENERIC:Lcom/payu/upisdk/PaymentOption;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    .line 1152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/upisdk/PaymentOption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "postdata_collect"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "returnUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1154
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1155
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->m:Ljava/lang/String;

    .line 1156
    invoke-direct {p0, v0, p1}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    goto/16 :goto_1

    .line 1136
    :pswitch_3
    invoke-direct {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->b()V

    .line 1137
    iput-boolean v5, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->k:Z

    .line 1138
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->UPI_COLLECT:Lcom/payu/upisdk/PaymentOption;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    .line 1139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/upisdk/PaymentOption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 1140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PostDataUpiSdk "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->c()V

    .line 1142
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 3033
    iget-object p1, p1, Lcom/payu/upisdk/b;->d:Lcom/payu/upisdk/bean/UpiConfig;

    .line 1142
    invoke-virtual {p1}, Lcom/payu/upisdk/bean/UpiConfig;->getPostUrl()Ljava/lang/String;

    move-result-object p1

    .line 1143
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    goto/16 :goto_1

    .line 1116
    :pswitch_4
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->TEZ:Lcom/payu/upisdk/PaymentOption;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    .line 1117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Payment Started for TEZ >>> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/upisdk/PaymentOption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 1128
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-static {p1}, Lcom/payu/upisdk/util/b;->a(Lcom/payu/upisdk/PaymentOption;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1129
    new-instance p1, Lcom/payu/upisdk/c/a;

    invoke-direct {p1}, Lcom/payu/upisdk/c/a;-><init>()V

    .line 1130
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {p1, p0, v0}, Lcom/payu/upisdk/c/a;->a(Landroid/app/Activity;Lcom/payu/upisdk/bean/UpiConfig;)V

    .line 1131
    goto :goto_1

    .line 1132
    :cond_3
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2081
    iget-object p1, p1, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 1132
    const/16 v0, 0x401

    sget-object v1, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;

    sget v2, Lcom/payu/upisdk/R$string;->payu_gpay_module_is_not_imported:I

    invoke-virtual {v1, v2}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onUpiErrorReceived(ILjava/lang/String;)V

    .line 1134
    goto :goto_1

    .line 1109
    :pswitch_5
    sget-object p1, Lcom/payu/upisdk/PaymentOption;->PHONEPE:Lcom/payu/upisdk/PaymentOption;

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    .line 1110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Payment Started for PhonePe >>> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/upisdk/PaymentOption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 1112
    new-instance p1, Lcom/payu/upisdk/c/c;

    invoke-direct {p1}, Lcom/payu/upisdk/c/c;-><init>()V

    .line 1113
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {p1, p0, v0}, Lcom/payu/upisdk/c/c;->a(Landroid/app/Activity;Lcom/payu/upisdk/bean/UpiConfig;)V

    .line 1114
    nop

    .line 1174
    :cond_4
    :goto_1
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    .line 4046
    iput-object v0, p1, Lcom/payu/upisdk/b;->h:Lcom/payu/upisdk/PaymentOption;

    .line 1175
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v1}, Lcom/payu/upisdk/PaymentOption;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->h:Lcom/payu/upisdk/PaymentOption;

    invoke-virtual {v3}, Lcom/payu/upisdk/PaymentOption;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_launched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v3}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v4}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 95
    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x468ec964 -> :sswitch_5
        -0x36388b97 -> :sswitch_4
        0x1c029 -> :sswitch_3
        0x1c52e -> :sswitch_2
        0x448167c6 -> :sswitch_1
        0x50aec49c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .line 379
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OnDestroy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    sput-object v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->d:Landroid/view/View;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Is recreating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/payu/upisdk/Upi;->isRecreating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 383
    sget-boolean v0, Lcom/payu/upisdk/Upi;->isRecreating:Z

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 22081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 385
    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 23081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 386
    invoke-virtual {v0}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentTerminate()V

    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/payu/upisdk/Upi;->isRecreating:Z

    .line 393
    :cond_1
    return-void
.end method

.method public onSocketCreated()V
    .locals 4

    .line 498
    invoke-static {}, Lcom/payu/socketverification/socket/SocketHandler;->getInstance()Lcom/payu/socketverification/socket/SocketHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v1}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v2}, Lcom/payu/upisdk/bean/UpiConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->j:Lcom/payu/upisdk/bean/UpiConfig;

    invoke-virtual {v3}, Lcom/payu/upisdk/bean/UpiConfig;->getProgressDialogCustomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/payu/socketverification/socket/SocketHandler;->startSocketEvents(Ljava/lang/String;Ljava/lang/String;Lcom/payu/socketverification/interfaces/PayUSocketEventListener;Landroid/view/View;)V

    .line 500
    return-void
.end method

.method public transactionCancelled()V
    .locals 1

    .line 493
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;->a(Z)V

    .line 494
    return-void
.end method
