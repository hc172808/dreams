.class public Lcom/payu/custombrowser/PreLollipopPaymentsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Landroidx/browser/customtabs/CustomTabsClient;

.field d:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

.field e:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

.field private htmlData:Ljava/lang/String;

.field private isCustomTabsLaunched:Z

.field private merchantKey:Ljava/lang/String;

.field private payUResponse:Ljava/lang/String;

.field private postData:Lorg/json/JSONObject;

.field private postDataValue:Ljava/lang/String;

.field private s:Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;

.field private s2sRetryUrl:Ljava/lang/String;

.field private txnId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 42
    const-string v0, "com.android.chrome"

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->isCustomTabsLaunched:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->payUResponse:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->htmlData:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 145
    nop

    .line 147
    const-string v0, "{\""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 153
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    return-object p1
.end method

.method static synthetic a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->postData:Lorg/json/JSONObject;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payu/custombrowser/PrePaymentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->overridePendingTransition(II)V

    .line 286
    return-void
.end method

.method static synthetic a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->isCustomTabsLaunched:Z

    return p1
.end method

.method static synthetic b(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->s2sRetryUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->postDataValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a()V

    return-void
.end method

.method static synthetic f(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->postData:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 265
    :try_start_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 267
    const-string p6, "txnid"

    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->txnId:Ljava/lang/String;

    invoke-virtual {p5, p6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string p6, "merchant_key"

    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->merchantKey:Ljava/lang/String;

    invoke-virtual {p5, p6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string p6, "page_type"

    invoke-virtual {p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string p6, "event_key"

    invoke-virtual {p5, p6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string p2, "event_value"

    const-string p6, "UTF-8"

    invoke-static {p3, p6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string p2, "bank"

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    invoke-virtual {p5, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string p2, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string p1, "ts"

    invoke-static {}, Lcom/payu/custombrowser/util/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 276
    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    const-string p1, "{}"

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 244
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    sget-object v7, Lcom/payu/custombrowser/Bank;->a:Ljava/lang/String;

    const-string v8, ""

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 249
    :cond_0
    :goto_0
    nop

    .line 250
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_cache_analytics"

    invoke-static {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->f:Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    .line 58
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->url:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "txnId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->txnId:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->merchantKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->htmlData:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "postdata"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->postDataValue:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "s2sRetryUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->s2sRetryUrl:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;-><init>(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)V

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->s:Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;

    .line 68
    :try_start_0
    invoke-virtual {v0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-boolean v1, Lcom/payu/custombrowser/Bank;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 73
    :cond_0
    :goto_0
    new-instance v0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;

    invoke-direct {v0, p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$1;-><init>(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)V

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->e:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 111
    iget-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->b:Z

    goto/16 :goto_3

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v2, "[$][|]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 119
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 120
    invoke-direct {p0, v2}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 122
    aget-object v1, v1, v4

    .line 123
    invoke-direct {p0, v1}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->payUResponse:Ljava/lang/String;

    .line 125
    :cond_2
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "trxn_status"

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "success_transaction_custom_tabs"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 128
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->payUResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_3
    const-string v0, "failure_transaction_custom_tabs"

    invoke-virtual {p0, v1, v0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 132
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->payUResponse:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_4
    :goto_1
    goto :goto_2

    .line 135
    :cond_5
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 136
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    const/16 v1, 0x66

    const-string v2, "RESPONSE_NOT_PRESENT"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    .line 138
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a()V

    .line 142
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->s:Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;->b()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->e:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->e:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 173
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, p1}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 225
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 226
    iget-boolean v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->isCustomTabsLaunched:Z

    if-eqz v0, :cond_1

    .line 227
    const-string v0, "user_input"

    const-string v1, "custom_tabs_cancelled"

    invoke-virtual {p0, v0, v1}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackApprove()V

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->isCustomTabsLaunched:Z

    .line 231
    invoke-direct {p0}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a()V

    .line 233
    :cond_1
    return-void
.end method
