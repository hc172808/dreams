.class public Lcom/payu/custombrowser/CustomBrowser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 191
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "payu_surepay_channel"

    const-string v3, "No Internet Notification"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 192
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 195
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 200
    :cond_0
    return-void
.end method

.method private a(Lcom/payu/custombrowser/util/PaymentOption;Lcom/payu/custombrowser/bean/CustomBrowserConfig;Landroid/app/Activity;)V
    .locals 3

    .line 174
    new-instance v0, Lcom/payu/custombrowser/b/b;

    invoke-direct {v0}, Lcom/payu/custombrowser/b/b;-><init>()V

    .line 175
    invoke-virtual {p1}, Lcom/payu/custombrowser/util/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPaymentType(Ljava/lang/String;)V

    .line 176
    const-string p1, "com.payu.upisdk.Upi"

    const-string v1, "7.5.1"

    const-string v2, "cbVersion"

    invoke-static {p1, v1, v2}, Lcom/payu/custombrowser/util/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class Name: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< postdata >"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p3, p2}, Lcom/payu/custombrowser/b/b;->a(Landroid/app/Activity;Lcom/payu/custombrowser/bean/CustomBrowserConfig;)V

    .line 179
    return-void
.end method


# virtual methods
.method public addCustomBrowser(Landroid/app/Activity;Lcom/payu/custombrowser/bean/CustomBrowserConfig;Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cbCustomBrowserConfig"    # Lcom/payu/custombrowser/bean/CustomBrowserConfig;
    .param p3, "cbPayUCustomBrowserCallback"    # Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    .line 96
    invoke-static {p1}, Lcom/payu/custombrowser/util/c;->b(Landroid/app/Activity;)V

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_cache_analytics"

    invoke-static {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payu/payuanalytics/analytics/PayUAnalytics;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getAnalyticsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v6

    const-string v2, "cb_config"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1, p3}, Lcom/payu/custombrowser/bean/b;->setPayuCustomBrowserCallback(Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V

    .line 101
    new-instance v1, Lcom/payu/custombrowser/util/c;

    invoke-direct {v1}, Lcom/payu/custombrowser/util/c;-><init>()V

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/c;->d(Ljava/lang/String;)Lcom/payu/custombrowser/util/PaymentOption;

    move-result-object v1

    .line 102
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReactVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReactVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v4, "react_version_name"

    invoke-static/range {v3 .. v9}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Payment option name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 107
    if-eqz v1, :cond_4

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PaymentOptionName CB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/payu/custombrowser/util/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payu/custombrowser/util/e;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Lcom/payu/custombrowser/util/PaymentOption;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-static {v1}, Lcom/payu/custombrowser/util/c;->a(Lcom/payu/custombrowser/util/PaymentOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0, v1, p2, p1}, Lcom/payu/custombrowser/CustomBrowser;->a(Lcom/payu/custombrowser/util/PaymentOption;Lcom/payu/custombrowser/bean/CustomBrowserConfig;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 114
    :cond_1
    const/16 v0, 0x3fe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/payu/custombrowser/util/PaymentOption;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 116
    :cond_2
    sget-object v2, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v2, v1}, Lcom/payu/custombrowser/bean/b;->isPaymentOptionAvailabilityCalled(Lcom/payu/custombrowser/util/PaymentOption;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    invoke-direct {p0, v1, p2, p1}, Lcom/payu/custombrowser/CustomBrowser;->a(Lcom/payu/custombrowser/util/PaymentOption;Lcom/payu/custombrowser/bean/CustomBrowserConfig;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/payu/custombrowser/util/PaymentOption;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/payu/custombrowser/util/PaymentOption;->getAnalyticsKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_launch_failed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 120
    const/16 v0, 0x3fd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forget to call checkForPaymentAvailability for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/payu/custombrowser/util/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 122
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_5

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v4, "os_not_supported"

    invoke-static/range {v3 .. v9}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 125
    const/16 v0, 0x65

    const-string v1, "OS_NOT_SUPPORTED"

    invoke-virtual {p3, v0, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 126
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v2, :cond_6

    .line 128
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getGmsProviderUpdatedStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    goto/16 :goto_0

    .line 147
    :cond_6
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSurePay()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://secure.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mobiletest.payu.in/_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 148
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mobiletest.payu.in/_seamless_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://secure.payu.in/_seamless_payment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    :cond_7
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 151
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 154
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&snooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getEnableSurePay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setPayuPostData(Ljava/lang/String;)V

    .line 157
    :cond_9
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurePayNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payu_surepay_channel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    invoke-direct {p0, p1}, Lcom/payu/custombrowser/CustomBrowser;->a(Landroid/app/Activity;)V

    .line 160
    :cond_a
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getCbMenuAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/CBActivity;->a:Landroid/widget/ArrayAdapter;

    .line 161
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getToolBarView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/CBActivity;->e:Landroid/view/View;

    .line 162
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getProgressDialogCustomView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/payu/custombrowser/CBActivity;->f:Landroid/view/View;

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payu/custombrowser/CBActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    const-string v1, "cb_config"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderDefaultViewData()Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderDefaultViewData()Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/ReviewOrderBundle;->getReviewOrderDatas()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 166
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getReviewOrderDefaultViewData()Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/ReviewOrderBundle;->getReviewOrderDatas()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "order_details"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    :cond_b
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 130
    :cond_c
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/payu/custombrowser/util/c;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v3, "custom_tabs"

    const-string v4, "custom_tabs_launched"

    invoke-static/range {v2 .. v8}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payu/custombrowser/PrePaymentsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPostURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getHtmlData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getPayuPostData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "postdata"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getSurepayS2Surl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "s2sRetryUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "txnId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 140
    goto :goto_1

    .line 142
    :cond_d
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getMerchantKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getTransactionID()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v4, "custom_tabs"

    const-string v5, "custom_tabs_launch_failed"

    invoke-static/range {v3 .. v9}, Lcom/payu/custombrowser/util/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payu/payuanalytics/analytics/PayUAnalytics;->log(Ljava/lang/String;)V

    .line 143
    const/16 v0, 0x67

    const-string v1, "CHROME_NOT_PRESENT"

    invoke-virtual {p3, v0, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    .line 171
    :goto_1
    return-void
.end method

.method public checkForPaymentAvailability(Landroid/app/Activity;Lcom/payu/custombrowser/util/PaymentOption;Lcom/payu/custombrowser/PayUCustomBrowserCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paymentOption"    # Lcom/payu/custombrowser/util/PaymentOption;
    .param p3, "payUCustomBrowserCallback"    # Lcom/payu/custombrowser/PayUCustomBrowserCallback;
    .param p4, "paymentOptionHash"    # Ljava/lang/String;
    .param p5, "merchantKey"    # Ljava/lang/String;
    .param p6, "user_credentials"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0, p3}, Lcom/payu/custombrowser/bean/b;->setPayuCustomBrowserCallback(Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V

    .line 42
    invoke-static {p1}, Lcom/payu/custombrowser/util/c;->b(Landroid/app/Activity;)V

    .line 43
    new-instance v1, Lcom/payu/custombrowser/b/b;

    invoke-direct {v1}, Lcom/payu/custombrowser/b/b;-><init>()V

    .line 44
    sget-object v0, Lcom/payu/custombrowser/CustomBrowser$1;->a:[I

    invoke-virtual {p2}, Lcom/payu/custombrowser/util/PaymentOption;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, " is missing"

    const-string v3, "Device not supported or "

    const/16 v4, 0x3fe

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 70
    :pswitch_0
    invoke-static {p2}, Lcom/payu/custombrowser/util/c;->a(Lcom/payu/custombrowser/util/PaymentOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/payu/custombrowser/bean/CustomBrowserResultData;

    invoke-direct {v0}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;-><init>()V

    .line 72
    invoke-virtual {v0, p2}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/CustomBrowserResultData;->setPaymentOptionAvailable(Z)V

    .line 75
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1, p2}, Lcom/payu/custombrowser/bean/b;->setPaymentOption(Lcom/payu/custombrowser/util/PaymentOption;)V

    .line 76
    invoke-virtual {p3, v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->isPaymentOptionAvailable(Lcom/payu/custombrowser/bean/CustomBrowserResultData;)V

    .line 79
    goto/16 :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/payu/custombrowser/util/PaymentOption;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-static {p2}, Lcom/payu/custombrowser/util/c;->a(Lcom/payu/custombrowser/util/PaymentOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/payu/custombrowser/util/PaymentOption;->PHONEPE:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/custombrowser/util/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/payu/custombrowser/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/payu/custombrowser/util/PaymentOption;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    .line 66
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-static {p2}, Lcom/payu/custombrowser/util/c;->a(Lcom/payu/custombrowser/util/PaymentOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    sget-object v0, Lcom/payu/custombrowser/util/PaymentOption;->SAMSUNGPAY:Lcom/payu/custombrowser/util/PaymentOption;

    invoke-virtual {v0}, Lcom/payu/custombrowser/util/PaymentOption;->getPaymentName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/payu/custombrowser/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/payu/custombrowser/util/PaymentOption;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onCBErrorReceived(ILjava/lang/String;)V

    .line 51
    nop

    .line 85
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
