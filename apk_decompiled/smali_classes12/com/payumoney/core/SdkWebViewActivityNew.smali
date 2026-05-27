.class public Lcom/payumoney/core/SdkWebViewActivityNew;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/OnVerifyPaymentResponse;


# instance fields
.field a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/payumoney/core/request/PaymentRequest;

.field private g:Ljava/lang/String;

.field private h:Landroid/app/ProgressDialog;

.field private i:Lcom/payu/custombrowser/Bank;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/SdkWebViewActivityNew;Lcom/payu/custombrowser/Bank;)Lcom/payu/custombrowser/Bank;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->i:Lcom/payu/custombrowser/Bank;

    return-object p1
.end method

.method static synthetic a(Lcom/payumoney/core/SdkWebViewActivityNew;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/payumoney/core/SdkWebViewActivityNew;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->d:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    .line 343
    :try_start_0
    const-string v0, ""

    .line 344
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 345
    const/4 v1, 0x1

    .line 346
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 348
    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 351
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_1
    const/4 v1, 0x0

    .line 354
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    goto :goto_0

    .line 356
    :cond_1
    monitor-exit p0

    return-object v0

    .line 342
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "paymentId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-static {p0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/payumoney/core/SdkSession;->notifyUserCancelledTransaction(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "paymentstatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    const-string v1, "eventname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string p1, "payuresponse"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string p1, "merchantresponse"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 377
    return-void
.end method

.method static synthetic b(Lcom/payumoney/core/SdkWebViewActivityNew;)Lcom/payu/custombrowser/Bank;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->i:Lcom/payu/custombrowser/Bank;

    return-object p0
.end method

.method static synthetic b(Lcom/payumoney/core/SdkWebViewActivityNew;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->g:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 480
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 483
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 484
    const-string v1, "Please Wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 488
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    .line 291
    const-string v0, "merchant_name"

    invoke-static {p0, v0}, Lcom/payumoney/core/utils/SharedPrefsUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "PayUMoney"

    .line 294
    :cond_1
    sget v1, Lcom/payumoney/core/R$id;->tv_webview_review_order_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 295
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method

.method protected a(Landroid/view/View;I)V
    .locals 1

    .line 299
    sget v0, Lcom/payumoney/core/R$id;->tv_webview_review_order_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 300
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    sget v0, Lcom/payumoney/core/R$id;->btn_webview_review_order:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 303
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    sget v0, Lcom/payumoney/core/R$id;->img_webview_review_order_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 306
    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 309
    :cond_0
    return-void
.end method

.method public cancelTransaction()V
    .locals 6

    .line 315
    invoke-direct {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->a()V

    .line 316
    const-string v0, "onPaymentCancelled"

    iput-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->g:Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 320
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v3, "TxnCancelled"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "TxnCancelAttempt"

    const-string v5, "clevertap"

    invoke-static {v3, v4, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 325
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "reason"

    const-string v2, "cancelled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PaymentAbandoned"

    invoke-static {v1, v2, v0, v5}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->c()V

    .line 330
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/payumoney/core/SdkSession;->verifyPaymentDetails(Ljava/lang/String;Lcom/payumoney/core/listener/OnVerifyPaymentResponse;)V

    .line 331
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    const-string v0, "bankcode"

    const-string v1, "store_card"

    const-string v2, "card_name"

    const-string v3, "store_card_token"

    const-string v4, "mode"

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v5, Lcom/payumoney/core/R$layout;->sdk_activity_web_view_dummy:I

    invoke-virtual {p0, v5}, Lcom/payumoney/core/SdkWebViewActivityNew;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "merchantKey"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "could not find"

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    :goto_0
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->h:Landroid/app/ProgressDialog;

    .line 67
    new-instance v6, Lcom/payumoney/core/SdkWebViewActivityNew$1;

    invoke-direct {v6, p0, v5}, Lcom/payumoney/core/SdkWebViewActivityNew$1;-><init>(Lcom/payumoney/core/SdkWebViewActivityNew;Ljava/lang/String;)V

    .line 156
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    .line 158
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 159
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 160
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 161
    iget-object v9, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    goto :goto_1

    .line 163
    :cond_1
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    const-string v8, "device_type"

    const-string v9, "1"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CASHCARD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "pg"

    if-eqz v7, :cond_2

    .line 167
    :try_start_1
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    const-string v9, "CASH"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 169
    :cond_2
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_2
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "paymentId"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->e:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "payment_request"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/payumoney/core/request/PaymentRequest;

    iput-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    const-string v8, "ccvv"

    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/payumoney/core/PayUmoneyConstants;->CC:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    .line 175
    invoke-virtual {v7}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/payumoney/core/PayUmoneyConstants;->DC:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    .line 176
    invoke-virtual {v7}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/payumoney/core/PayUmoneyConstants;->EMI:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    .line 177
    invoke-virtual {v7}, Lcom/payumoney/core/request/PaymentRequest;->getCardtoken()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    .line 178
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    const-string v9, "ccnum"

    iget-object v10, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v10}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    iget-object v9, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v9}, Lcom/payumoney/core/request/PaymentRequest;->getCvv()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    const-string v9, "ccexpyr"

    iget-object v10, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v10}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryYear()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    const-string v9, "ccexpmon"

    iget-object v10, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v10}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryMonth()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_4
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/payumoney/core/PayUmoneyConstants;->UPI:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 186
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    sget-object v9, Lcom/payumoney/core/PayUmoneyConstants;->PM_KEY_VPA:Ljava/lang/String;

    iget-object v10, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v10}, Lcom/payumoney/core/request/PaymentRequest;->getVpa()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_5
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 192
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->f:Lcom/payumoney/core/request/PaymentRequest;

    if-eqz v0, :cond_6

    .line 193
    iget-object v7, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/payumoney/core/request/PaymentRequest;->getCvv()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_7
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 199
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_8
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_9
    const-string v0, "txnid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_a
    new-instance v1, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const-string v2, "123454"

    invoke-direct {v1, v2, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 210
    iput-boolean v2, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->b:Z

    .line 211
    :cond_b
    iget-boolean v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->b:Z

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setViewPortWideEnable(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneyConfig;->isEnableReviewOrder()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 215
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneyConfig;->getReviewOrderBundle()Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    move-result-object v3

    .line 216
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneyConfig;->getReviewOrderMenuText()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 218
    sget v4, Lcom/payumoney/core/R$string;->review_order_default_text:I

    invoke-virtual {p0, v4}, Lcom/payumoney/core/SdkWebViewActivityNew;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    :cond_c
    if-eqz v3, :cond_11

    .line 222
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/payumoney/core/PayUmoneyConfig;->getReviewOrderImpl()Lcom/payumoney/core/listener/ReviewOrderImpl;

    move-result-object v5

    .line 223
    if-nez v5, :cond_d

    .line 224
    invoke-virtual {v1, v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setReviewOrderDefaultViewData(Lcom/payu/custombrowser/bean/ReviewOrderBundle;)V

    .line 225
    invoke-virtual {v1, v4}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setReviewOrderButtonText(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setEnableReviewOrder(I)V

    goto :goto_3

    .line 228
    :cond_d
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 229
    sget v7, Lcom/payumoney/core/R$layout;->sdk_review_order_toolbar:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 230
    if-eqz v3, :cond_11

    .line 231
    invoke-virtual {v1, v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setToolBarView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0, v3}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Landroid/view/View;)V

    .line 235
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/payumoney/core/PayUmoneyConfig;->getReviewOrderToolbarBgColor()I

    move-result v7

    .line 236
    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    .line 237
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    :cond_e
    invoke-static {}, Lcom/payumoney/core/PayUmoneyConfig;->getInstance()Lcom/payumoney/core/PayUmoneyConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/payumoney/core/PayUmoneyConfig;->getReviewOrderToolbarTextColor()I

    move-result v7

    .line 241
    if-eq v7, v8, :cond_f

    .line 242
    invoke-virtual {p0, v3, v7}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Landroid/view/View;I)V

    .line 245
    :cond_f
    sget v7, Lcom/payumoney/core/R$id;->btn_webview_review_order:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 246
    if-eqz v7, :cond_10

    .line 247
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v4, Lcom/payumoney/core/SdkWebViewActivityNew$2;

    invoke-direct {v4, p0, v5}, Lcom/payumoney/core/SdkWebViewActivityNew$2;-><init>(Lcom/payumoney/core/SdkWebViewActivityNew;Lcom/payumoney/core/listener/ReviewOrderImpl;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_10
    sget v4, Lcom/payumoney/core/R$id;->img_webview_review_order_back:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 258
    if-eqz v3, :cond_11

    .line 259
    new-instance v4, Lcom/payumoney/core/SdkWebViewActivityNew$3;

    invoke-direct {v4, p0}, Lcom/payumoney/core/SdkWebViewActivityNew$3;-><init>(Lcom/payumoney/core/SdkWebViewActivityNew;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 274
    :cond_11
    :goto_3
    goto :goto_4

    .line 272
    :catch_0
    move-exception v3

    .line 273
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    :goto_4
    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setDisableBackButtonDialog(Z)V

    .line 277
    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setMerchantSMSPermission(Z)V

    .line 280
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->getWebviewRedirectionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPostURL(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/payumoney/core/SdkWebViewActivityNew;->c:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/payu/custombrowser/CustomBrowser;

    invoke-direct {v0}, Lcom/payu/custombrowser/CustomBrowser;-><init>()V

    invoke-virtual {v0, p0, v1, v6}, Lcom/payu/custombrowser/CustomBrowser;->addCustomBrowser(Landroid/app/Activity;Lcom/payu/custombrowser/bean/CustomBrowserConfig;Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 286
    goto :goto_5

    .line 284
    :catch_1
    move-exception v0

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 288
    :goto_5
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->b()V

    .line 368
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 369
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->c()V

    .line 362
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 363
    return-void
.end method

.method public onVerifyStatusResponseReceived(Ljava/lang/String;)V
    .locals 17
    .param p1, "response"    # Ljava/lang/String;

    .line 384
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "onPaymentCancelled"

    const-string v0, "status"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 385
    const-string v5, "EventSource"

    const-string v6, "SDK"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v5, "onPaymentFailure"

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 388
    invoke-direct {v1, v5, v6, v6}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->finish()V

    .line 390
    return-void

    .line 393
    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v9, "reason"

    const-string v10, "clevertap"

    const-string v11, "result"

    if-eqz v8, :cond_7

    :try_start_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    .line 395
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 396
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 399
    const-string v8, "pg_TYPE"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 400
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 401
    const-string v11, "pgType"

    invoke-virtual {v4, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 404
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "success"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v8, "null"

    const-string v11, "Amount"

    const-string v12, "amount"

    const-wide/16 v13, 0x0

    const-string v15, "additionalCharges"

    if-eqz v0, :cond_3

    .line 408
    nop

    .line 409
    :try_start_2
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 411
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 414
    :cond_2
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    add-double/2addr v7, v13

    .line 415
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 418
    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 419
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "PaymentSucceeded"

    invoke-static {v0, v7, v4, v10}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 421
    const-string v0, "onPaymentSuccess"

    iget-object v4, v1, Lcom/payumoney/core/SdkWebViewActivityNew;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v4}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->finish()V

    .line 423
    return-void

    .line 425
    :cond_3
    iget-object v0, v1, Lcom/payumoney/core/SdkWebViewActivityNew;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, v1, Lcom/payumoney/core/SdkWebViewActivityNew;->d:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 428
    return-void

    .line 432
    :cond_4
    nop

    .line 433
    :try_start_4
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 434
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 435
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 436
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 438
    :cond_5
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    add-double/2addr v15, v13

    .line 439
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 442
    goto :goto_1

    .line 440
    :catch_1
    move-exception v0

    .line 441
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 443
    :goto_1
    const-string v0, "field9"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "PaymentFailed"

    invoke-static {v0, v7, v4, v10}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 446
    iget-object v0, v1, Lcom/payumoney/core/SdkWebViewActivityNew;->d:Ljava/lang/String;

    invoke-direct {v1, v5, v2, v0}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->finish()V

    .line 448
    return-void

    .line 452
    :cond_6
    goto :goto_2

    .line 455
    :cond_7
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_9

    .line 456
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 458
    invoke-virtual {v4, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "VerifyPaymentAPIError"

    invoke-static {v0, v7, v4, v10}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 464
    :cond_9
    :goto_2
    goto :goto_3

    .line 462
    :catch_2
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    :goto_3
    iget-object v0, v1, Lcom/payumoney/core/SdkWebViewActivityNew;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 468
    invoke-direct {v1, v3, v6, v6}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 471
    :cond_a
    invoke-direct {v1, v5, v6, v6}, Lcom/payumoney/core/SdkWebViewActivityNew;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/payumoney/core/SdkWebViewActivityNew;->finish()V

    .line 474
    return-void
.end method
