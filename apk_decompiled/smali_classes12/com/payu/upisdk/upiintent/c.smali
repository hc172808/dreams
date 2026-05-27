.class public final Lcom/payu/upisdk/upiintent/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/payu/upisdk/util/b;

.field private j:Ljava/util/Timer;

.field private k:Lcom/payu/upisdk/b/a;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lcom/payu/payuanalytics/analytics/PayUAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    .line 68
    iput-object p2, p0, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/payu/upisdk/util/b;

    invoke-direct {v0}, Lcom/payu/upisdk/util/b;-><init>()V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/c;->i:Lcom/payu/upisdk/util/b;

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/payu/upisdk/b/a;

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/c;->k:Lcom/payu/upisdk/b/a;

    .line 71
    invoke-static {p2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;)Lcom/payu/upisdk/PaymentOption;

    move-result-object p2

    .line 72
    sget-object v0, Lcom/payu/upisdk/PaymentOption;->UPI_INTENT:Lcom/payu/upisdk/PaymentOption;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/payu/upisdk/upiintent/c;->m:Z

    .line 73
    sget-object p2, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 1033
    iget-object p2, p2, Lcom/payu/upisdk/b;->d:Lcom/payu/upisdk/bean/UpiConfig;

    .line 73
    invoke-virtual {p2}, Lcom/payu/upisdk/bean/UpiConfig;->getPostUrl()Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "local_cache_analytics"

    invoke-static {p1, p2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/c;->o:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/payu/upisdk/upiintent/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/payu/upisdk/upiintent/a;",
            ">;"
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 292
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 293
    new-instance v4, Lcom/payu/upisdk/upiintent/a;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "package"

    .line 294
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v0, v3}, Lcom/payu/upisdk/upiintent/a;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 295
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_1

    .line 298
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 290
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-object v1

    .line 304
    :cond_1
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 315
    const-string v0, "Status"

    const-string v1, "result"

    const-string v2, "failure"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 317
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 318
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 324
    :cond_0
    nop

    .line 325
    return-object v2

    .line 322
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 323
    return-object v2
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/payu/socketverification/widgets/PayUProgressDialog;

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 15025
    iget-object v2, v2, Lcom/payu/upisdk/b;->b:Landroid/view/View;

    .line 446
    invoke-direct {v0, v1, v2}, Lcom/payu/socketverification/widgets/PayUProgressDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/c;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setCancelable(Z)V

    .line 448
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 16025
    iget-object v0, v0, Lcom/payu/upisdk/b;->b:Landroid/view/View;

    .line 448
    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    iget-object v1, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setPayUDialogSettings(Landroid/content/Context;)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->show()V

    .line 452
    :cond_2
    return-void
.end method

.method public final a(Lcom/payu/upisdk/callbacks/PayUUPICallback;Landroid/app/Activity;Lcom/payu/upisdk/bean/UpiConfig;)V
    .locals 2

    .line 223
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 2090
    iput-object p1, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 224
    sget-object p1, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getProgressDialogCustomView()Landroid/view/View;

    move-result-object v0

    .line 3029
    iput-object v0, p1, Lcom/payu/upisdk/b;->b:Landroid/view/View;

    .line 226
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    .line 227
    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/c;->c:Ljava/lang/String;

    .line 228
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/payu/upisdk/util/b;->a(Landroid/app/Activity;)V

    .line 229
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 230
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/payu/upisdk/upiintent/PaymentResponseUpiSdkActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    invoke-virtual {p3}, Lcom/payu/upisdk/bean/UpiConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const-string v0, "txnid"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/payu/upisdk/bean/UpiConfig;->setTransactionID(Ljava/lang/String;)V

    .line 232
    const-string p2, "upiConfig"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 7

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class Name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Package name Generic Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 105
    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    const-string v1, "amount"

    invoke-static {p1, v1}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->l:Ljava/lang/String;

    :goto_0
    move-object v3, p1

    .line 107
    iget-object v1, p0, Lcom/payu/upisdk/upiintent/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/c;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    .line 108
    const-string v4, "txnId"

    invoke-static {p1, v4}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/payu/upisdk/upiintent/c;->h:Ljava/lang/String;

    .line 107
    const-string v6, "INR"

    invoke-static/range {v1 .. v6}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/16 v1, 0x65

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    nop

    .line 1240
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->j:Ljava/util/Timer;

    if-eqz p1, :cond_1

    .line 1241
    new-instance p1, Lcom/payu/upisdk/util/b;

    invoke-direct {p1}, Lcom/payu/upisdk/util/b;-><init>()V

    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->j:Ljava/util/Timer;

    invoke-static {p1}, Lcom/payu/upisdk/util/b;->a(Ljava/util/Timer;)V

    .line 1242
    :cond_1
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/c;->j:Ljava/util/Timer;

    .line 1245
    new-instance v0, Lcom/payu/upisdk/upiintent/c$1;

    invoke-direct {v0, p0}, Lcom/payu/upisdk/upiintent/c$1;-><init>(Lcom/payu/upisdk/upiintent/c;)V

    const-wide/32 v1, 0x124f80

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 111
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcom/payu/upisdk/upiintent/c;->a()V

    .line 263
    iget-boolean v0, p0, Lcom/payu/upisdk/upiintent/c;->m:Z

    const-string v1, "&failureReason="

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "txnStatus="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 266
    :cond_0
    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "cancelTxn"

    goto :goto_0

    :cond_1
    const-string v0, "fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "failTxn"

    goto :goto_0

    :cond_2
    const-string p1, "finish"

    .line 267
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "token="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    :goto_1
    new-instance p2, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    invoke-direct {p2}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;-><init>()V

    .line 271
    const-string v0, "POST"

    invoke-virtual {p2, v0}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setHttpMethod(Ljava/lang/String;)V

    .line 272
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setPostData(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Verify Url "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payu/upisdk/upiintent/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Verify Postdata "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/payu/upisdk/upiintent/c;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->setUrl(Ljava/lang/String;)V

    .line 277
    new-instance p1, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;

    const-string v0, "VERIFY"

    invoke-direct {p1, p0, v0}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;-><init>(Lcom/payu/socketverification/interfaces/PayuNetworkAsyncTaskInterface;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/payu/socketverification/core/PayUNetworkAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    return-void
.end method

.method public final onPayuNetworkAsyncTaskResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "cbAsynTaskResponse"    # Ljava/lang/String;
    .param p2, "webServiceType"    # Ljava/lang/String;

    .line 330
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/payu/upisdk/upiintent/c;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    iget-object v3, v1, Lcom/payu/upisdk/upiintent/c;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {v3}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->dismiss()V

    .line 332
    :cond_0
    const/4 v3, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v4, "initiate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "VERIFY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string v4, "txnId"

    const/4 v5, 0x0

    const-string v6, "Class Name: "

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 405
    .end local p1    # "cbAsynTaskResponse":Ljava/lang/String;
    .end local p2    # "webServiceType":Ljava/lang/String;
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/payu/upisdk/util/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Verify Result "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Verify Response "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 408
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "failure_transaction"

    const-string v7, "key"

    const-string v8, "trxn_status_upi_sdk"

    if-nez v0, :cond_4

    .line 409
    invoke-static {v2}, Lcom/payu/upisdk/upiintent/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string v9, "failure"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Status Failure PaymentHandler upisdk "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 412
    iget-object v0, v1, Lcom/payu/upisdk/upiintent/c;->o:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v6, v1, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v9, v1, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    invoke-static {v9, v4}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v8, v3, v7, v4}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 9081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 413
    if-eqz v0, :cond_3

    .line 414
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 10081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 414
    invoke-virtual {v0, v2, v5}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 417
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Status Success PaymentHandler upisdk "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 418
    iget-object v0, v1, Lcom/payu/upisdk/upiintent/c;->o:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v3, v1, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, v1, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "success_transaction"

    invoke-static {v3, v8, v7, v6, v4}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 11081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 420
    if-eqz v0, :cond_3

    .line 421
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 12081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 421
    invoke-virtual {v0, v2, v5}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_3
    goto :goto_1

    .line 425
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Status Failure else PaymentHandler upisdk "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 426
    iget-object v0, v1, Lcom/payu/upisdk/upiintent/c;->o:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    iget-object v2, v1, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 427
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, v1, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/payu/upisdk/upiintent/c;->b:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/payu/upisdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-static {v2, v8, v3, v6, v4}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 13081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 429
    if-eqz v0, :cond_5

    .line 430
    sget-object v0, Lcom/payu/upisdk/b;->a:Lcom/payu/upisdk/b;

    .line 14081
    iget-object v0, v0, Lcom/payu/upisdk/b;->g:Lcom/payu/upisdk/callbacks/PayUUPICallback;

    .line 430
    invoke-virtual {v0, v5, v5}, Lcom/payu/upisdk/callbacks/PayUUPICallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_5
    :goto_1
    iget-object v0, v1, Lcom/payu/upisdk/upiintent/c;->j:Ljava/util/Timer;

    if-eqz v0, :cond_6

    .line 434
    new-instance v0, Lcom/payu/upisdk/util/b;

    invoke-direct {v0}, Lcom/payu/upisdk/util/b;-><init>()V

    iget-object v0, v1, Lcom/payu/upisdk/upiintent/c;->j:Ljava/util/Timer;

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->a(Ljava/util/Timer;)V

    .line 435
    :cond_6
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/c;
    iget-object v0, v1, Lcom/payu/upisdk/upiintent/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 335
    .restart local p0    # "this":Lcom/payu/upisdk/upiintent/c;
    .restart local p1    # "cbAsynTaskResponse":Ljava/lang/String;
    .restart local p2    # "webServiceType":Ljava/lang/String;
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "cbAsynTaskResponse: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/payu/upisdk/util/a;->a(Ljava/lang/String;)V

    .line 336
    if-eqz v0, :cond_9

    .line 338
    nop

    .end local p2    # "webServiceType":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 341
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .end local p1    # "cbAsynTaskResponse":Ljava/lang/String;
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    const-string v0, "merchantName"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/payu/upisdk/upiintent/c;->g:Ljava/lang/String;

    .line 344
    const-string v0, "returnUrl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/payu/upisdk/upiintent/c;->e:Ljava/lang/String;

    .line 345
    const-string v0, "merchantVpa"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/payu/upisdk/upiintent/c;->f:Ljava/lang/String;

    .line 346
    const-string v0, "referenceId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/payu/upisdk/upiintent/c;->h:Ljava/lang/String;

    .line 347
    const-string v0, "amount"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/payu/upisdk/upiintent/c;->l:Ljava/lang/String;

    .line 348
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    const-string v3, "token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/payu/upisdk/upiintent/c;->n:Ljava/lang/String;

    .line 351
    const-string v3, "upiPushDisabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    const-string v4, "pushServiceUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    const-string v6, "upiServicePollInterval"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 354
    const-string v7, "sdkUpiPushExpiry"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 355
    const-string v8, "sdkUpiVerificationInterval"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 357
    const-string v9, "disableIntentSeamlessFailure"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 358
    const-string v10, "intentSdkCombineVerifyAndPayButton"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 359
    const-string v11, "apps"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-static {v11}, Lcom/payu/upisdk/upiintent/c;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v11

    .line 360
    const-string v12, "vpaRegex"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 361
    const-string v13, "result"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 362
    const-string v14, "message"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 363
    const-string v15, "Status"

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 366
    new-instance v15, Lcom/payu/upisdk/upiintent/d;

    invoke-direct {v15}, Lcom/payu/upisdk/upiintent/d;-><init>()V

    .line 367
    iget-object v5, v1, Lcom/payu/upisdk/upiintent/c;->g:Ljava/lang/String;

    .line 3078
    iput-object v5, v15, Lcom/payu/upisdk/upiintent/d;->a:Ljava/lang/String;

    .line 368
    iget-object v5, v1, Lcom/payu/upisdk/upiintent/c;->f:Ljava/lang/String;

    .line 3094
    iput-object v5, v15, Lcom/payu/upisdk/upiintent/d;->c:Ljava/lang/String;

    .line 369
    iget-object v5, v1, Lcom/payu/upisdk/upiintent/c;->h:Ljava/lang/String;

    .line 3102
    iput-object v5, v15, Lcom/payu/upisdk/upiintent/d;->d:Ljava/lang/String;

    .line 370
    iget-object v5, v1, Lcom/payu/upisdk/upiintent/c;->e:Ljava/lang/String;

    .line 4086
    iput-object v5, v15, Lcom/payu/upisdk/upiintent/d;->b:Ljava/lang/String;

    .line 371
    iget-object v5, v1, Lcom/payu/upisdk/upiintent/c;->l:Ljava/lang/String;

    .line 4110
    iput-object v5, v15, Lcom/payu/upisdk/upiintent/d;->e:Ljava/lang/String;

    .line 372
    iget-object v5, v1, Lcom/payu/upisdk/upiintent/c;->n:Ljava/lang/String;

    .line 4150
    iput-object v5, v15, Lcom/payu/upisdk/upiintent/d;->j:Ljava/lang/String;

    .line 373
    iget-object v5, v1, Lcom/payu/upisdk/upiintent/c;->e:Ljava/lang/String;

    .line 5086
    iput-object v5, v15, Lcom/payu/upisdk/upiintent/d;->b:Ljava/lang/String;

    .line 374
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "null"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 375
    nop

    .line 5142
    iput-object v10, v15, Lcom/payu/upisdk/upiintent/d;->h:Ljava/lang/String;

    .line 376
    :cond_7
    nop

    .line 6134
    iput-object v9, v15, Lcom/payu/upisdk/upiintent/d;->g:Ljava/lang/String;

    .line 377
    nop

    .line 7118
    iput-object v0, v15, Lcom/payu/upisdk/upiintent/d;->f:Ljava/lang/String;

    .line 378
    nop

    .line 7126
    iput-object v11, v15, Lcom/payu/upisdk/upiintent/d;->i:Ljava/util/List;

    .line 379
    nop

    .line 7158
    iput-object v12, v15, Lcom/payu/upisdk/upiintent/d;->k:Ljava/lang/String;

    .line 380
    new-instance v0, Lcom/payu/socketverification/socket/SocketPaymentResponse;

    invoke-direct {v0}, Lcom/payu/socketverification/socket/SocketPaymentResponse;-><init>()V

    .line 381
    invoke-virtual {v0, v3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setUpiPushDisabled(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, v4}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setPushServiceUrl(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, v6}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setUpiServicePollInterval(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v7}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setSdkUpiPushExpiry(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, v8}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->setSdkUpiVerificationInterval(Ljava/lang/String;)V

    .line 386
    nop

    .line 8058
    iput-object v0, v15, Lcom/payu/upisdk/upiintent/d;->o:Lcom/payu/socketverification/socket/SocketPaymentResponse;

    .line 387
    nop

    .line 8166
    iput-object v13, v15, Lcom/payu/upisdk/upiintent/d;->l:Ljava/lang/String;

    .line 388
    nop

    .line 8174
    iput-object v14, v15, Lcom/payu/upisdk/upiintent/d;->m:Ljava/lang/String;

    .line 389
    nop

    .line 8182
    iput v2, v15, Lcom/payu/upisdk/upiintent/d;->n:I

    .line 390
    iget-object v0, v1, Lcom/payu/upisdk/upiintent/c;->k:Lcom/payu/upisdk/b/a;

    invoke-interface {v0, v15}, Lcom/payu/upisdk/b/a;->a(Lcom/payu/upisdk/upiintent/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    iget-object v2, v1, Lcom/payu/upisdk/upiintent/c;->k:Lcom/payu/upisdk/b/a;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/payu/upisdk/b/a;->a(Lcom/payu/upisdk/upiintent/d;)V

    .line 393
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 395
    return-void

    .line 338
    .restart local p1    # "cbAsynTaskResponse":Ljava/lang/String;
    :cond_8
    move-object v3, v5

    .line 396
    .end local p1    # "cbAsynTaskResponse":Ljava/lang/String;
    iget-object v0, v1, Lcom/payu/upisdk/upiintent/c;->k:Lcom/payu/upisdk/b/a;

    invoke-interface {v0, v3}, Lcom/payu/upisdk/b/a;->a(Lcom/payu/upisdk/upiintent/d;)V

    return-void

    .line 438
    .end local p0    # "this":Lcom/payu/upisdk/upiintent/c;
    :cond_9
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x694c8387 -> :sswitch_1
        0x10099299 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
