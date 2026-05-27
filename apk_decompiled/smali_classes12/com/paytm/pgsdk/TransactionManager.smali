.class public Lcom/paytm/pgsdk/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# static fields
.field public static final ENABLE_PAYTM_TRANSPARENT_INVOKE:Ljava/lang/String; = "paytm_invoke"

.field public static final PAYTM_APP_PACKAGE:Ljava/lang/String; = "net.one97.paytm"


# instance fields
.field private callingBridge:Ljava/lang/String;

.field private enableAppInvoke:Z

.field private enableAssist:Z

.field private enableRedirectionFlow:Z

.field private isSubscriptionFlow:Z

.field private mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

.field private paytmOrder:Lcom/paytm/pgsdk/PaytmOrder;

.field public showPaymentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paytm/pgsdk/PaytmOrder;Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V
    .locals 2
    .param p1, "paytmOrder"    # Lcom/paytm/pgsdk/PaytmOrder;
    .param p2, "paymentTransactionCallback"    # Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "https://securegw.paytm.in/theia/api/v1/showPaymentPage"

    iput-object v0, p0, Lcom/paytm/pgsdk/TransactionManager;->showPaymentUrl:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paytm/pgsdk/TransactionManager;->enableAppInvoke:Z

    .line 24
    iput-boolean v0, p0, Lcom/paytm/pgsdk/TransactionManager;->enableRedirectionFlow:Z

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/paytm/pgsdk/TransactionManager;->isSubscriptionFlow:Z

    .line 37
    iput-boolean v0, p0, Lcom/paytm/pgsdk/TransactionManager;->enableAssist:Z

    .line 58
    if-eqz p1, :cond_0

    .line 62
    iput-object p2, p0, Lcom/paytm/pgsdk/TransactionManager;->mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    .line 63
    iput-object p1, p0, Lcom/paytm/pgsdk/TransactionManager;->paytmOrder:Lcom/paytm/pgsdk/PaytmOrder;

    .line 64
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transaction params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPaytmVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 134
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v1, "net.one97.paytm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 135
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 136
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppInvoke"

    invoke-virtual {v2, v4, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "Paytm app not installed"

    invoke-static {v2}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private isEnableAssist()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/paytm/pgsdk/TransactionManager;->enableAssist:Z

    return v0
.end method

.method private isPaytmAppInstalled(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    const-string v0, "exist"

    const-string v1, "AppInvoke"

    const-string v2, "Paytm_App_exists"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 118
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "net.one97.paytm"

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 120
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v2, v1, v0, v6}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 123
    :catch_0
    move-exception v5

    .line 124
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v6

    const-string v7, "false"

    invoke-virtual {v6, v2, v1, v0, v7}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "Paytm app not installed"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 127
    return v4
.end method

.method private isSubscriptionFlow()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/paytm/pgsdk/TransactionManager;->isSubscriptionFlow:Z

    return v0
.end method

.method private startPaytmAppInvoke(Landroid/app/Activity;I)V
    .locals 22
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 181
    move-object/from16 v1, p0

    const-string v2, "isFromAIO"

    const-string v3, "status"

    const-string v4, "Paytm_App_invoke"

    const-string v5, "AppInvoke"

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v6, v0

    .line 182
    .local v6, "paytmIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 184
    .local v7, "bundle":Landroid/os/Bundle;
    iget-object v0, v1, Lcom/paytm/pgsdk/TransactionManager;->paytmOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmOrder;->getRequestParamMap()Ljava/util/HashMap;

    move-result-object v8

    .line 185
    .local v8, "hmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "TXN_AMOUNT"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 187
    .local v9, "orderAmount":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 189
    .local v10, "doubleOrderAmount":D
    :try_start_0
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v10, v12

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 191
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v0, "nativeSdkEnabled"

    const/4 v12, 0x1

    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string v13, "ORDER_ID"

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "orderid"

    invoke-virtual {v7, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v14, "TXN_TOKEN"

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    move-object/from16 v16, v3

    const-string v3, "txnToken"

    invoke-virtual {v7, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v12, "MID"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    move-object/from16 v17, v2

    const-string v2, "mid"

    invoke-virtual {v7, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "nativeSdkForMerchantAmount"

    invoke-virtual {v7, v4, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 201
    invoke-direct/range {p0 .. p1}, Lcom/paytm/pgsdk/TransactionManager;->getPaytmVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "currentAppVersion":Ljava/lang/String;
    move-wide/from16 v19, v10

    .end local v10    # "doubleOrderAmount":D
    .local v19, "doubleOrderAmount":D
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v10

    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v11

    move-object/from16 v21, v7

    .end local v7    # "bundle":Landroid/os/Bundle;
    .local v21, "bundle":Landroid/os/Bundle;
    iget-object v7, v1, Lcom/paytm/pgsdk/TransactionManager;->paytmOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v11, v7}, Lcom/paytm/pgsdk/AnalyticsManager;->getEventLabelString(Lcom/paytm/pgsdk/PaytmOrder;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "app-invoke-bridge"

    invoke-virtual {v10, v11, v5, v7}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :try_start_1
    const-string v7, "8.6.0"

    invoke-direct {v1, v4, v7}, Lcom/paytm/pgsdk/TransactionManager;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const-string v10, "net.one97.paytm"

    if-gez v7, :cond_0

    .line 209
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "net.one97.paytm.AJRJarvisSplash"

    invoke-direct {v0, v10, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 228
    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move-object/from16 v10, v16

    move-object/from16 v7, v18

    move-object/from16 v3, v21

    goto/16 :goto_2

    .line 211
    :cond_0
    :try_start_3
    new-instance v7, Landroid/content/ComponentName;

    const-string v11, "net.one97.paytm.AJRRechargePaymentActivity"

    invoke-direct {v7, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    const-string v7, "enable_paytm_invoke"

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const-string v7, "paytm_invoke"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string v7, "price"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const/high16 v0, 0x8000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    :goto_1
    move-object/from16 v2, v17

    const/4 v0, 0x1

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const-string v0, "paymentmode"

    const/4 v3, 0x2

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v0, "bill"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v3, v21

    .end local v21    # "bundle":Landroid/os/Bundle;
    .local v3, "bundle":Landroid/os/Bundle;
    :try_start_4
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 224
    const/4 v0, 0x1

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    const-string v2, "success"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v10, v16

    move-object/from16 v7, v18

    :try_start_5
    invoke-virtual {v0, v7, v5, v10, v2}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 227
    move-object/from16 v2, p1

    move/from16 v11, p2

    :try_start_6
    invoke-virtual {v2, v6, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 232
    goto :goto_3

    .line 228
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v11, p2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move-object/from16 v10, v16

    move-object/from16 v7, v18

    goto :goto_2

    .end local v3    # "bundle":Landroid/os/Bundle;
    .restart local v21    # "bundle":Landroid/os/Bundle;
    :catch_5
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move-object/from16 v10, v16

    move-object/from16 v7, v18

    move-object/from16 v3, v21

    .line 229
    .end local v21    # "bundle":Landroid/os/Bundle;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :goto_2
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v12

    const-string v13, "fail"

    invoke-virtual {v12, v7, v5, v10, v13}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct/range {p0 .. p1}, Lcom/paytm/pgsdk/TransactionManager;->startRedirectionFlow(Landroid/content/Context;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private startRedirectionFlow(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 237
    iget-object v0, p0, Lcom/paytm/pgsdk/TransactionManager;->paytmOrder:Lcom/paytm/pgsdk/PaytmOrder;

    iget-object v1, p0, Lcom/paytm/pgsdk/TransactionManager;->showPaymentUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/paytm/pgsdk/PaytmPGService;->getShowPaymentService(Lcom/paytm/pgsdk/PaytmOrder;Ljava/lang/String;)Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    .line 238
    .local v0, "paytmPGService":Lcom/paytm/pgsdk/PaytmPGService;
    iget-object v1, p0, Lcom/paytm/pgsdk/TransactionManager;->paytmOrder:Lcom/paytm/pgsdk/PaytmOrder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/paytm/pgsdk/PaytmPGService;->initialize(Lcom/paytm/pgsdk/PaytmOrder;Lcom/paytm/pgsdk/PaytmClientCertificate;)V

    .line 239
    invoke-direct {p0}, Lcom/paytm/pgsdk/TransactionManager;->isEnableAssist()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/paytm/pgsdk/PaytmPGService;->setAssistEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/paytm/pgsdk/TransactionManager;->mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/paytm/pgsdk/PaytmPGService;->startPaymentTransaction(Landroid/content/Context;ZLcom/paytm/pgsdk/PaytmPaymentTransactionCallback;)V

    .line 242
    return-void
.end method

.method private versionCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "vals1":[Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "vals2":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 167
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 172
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    .line 173
    .local v3, "diff":I
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v4

    return v4

    .line 177
    .end local v3    # "diff":I
    :cond_2
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    return v3

    .line 159
    .end local v0    # "vals2":[Ljava/lang/String;
    .end local v1    # "vals1":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getCallingBridge()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/paytm/pgsdk/TransactionManager;->callingBridge:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInvokeEnabled(Z)V
    .locals 0
    .param p1, "enableAppInvoke"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/paytm/pgsdk/TransactionManager;->enableAppInvoke:Z

    .line 71
    return-void
.end method

.method public setCallingBridge(Ljava/lang/String;)V
    .locals 1
    .param p1, "callingBridge"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/paytm/pgsdk/TransactionManager;->callingBridge:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/paytm/pgsdk/AnalyticsManager;->setCallingBridge(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setEnableAssist(Z)V
    .locals 0
    .param p1, "enableAssist"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/paytm/pgsdk/TransactionManager;->enableAssist:Z

    .line 45
    return-void
.end method

.method public setRedirectionEnabled(Z)V
    .locals 0
    .param p1, "enableRedirectionFlow"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/paytm/pgsdk/TransactionManager;->enableRedirectionFlow:Z

    .line 78
    return-void
.end method

.method public setShowPaymentUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "showPaymentUrl"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lcom/paytm/pgsdk/TransactionManager;->showPaymentUrl:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setSubscriptioFlow(Z)V
    .locals 0
    .param p1, "isSubscriptionFlow"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/paytm/pgsdk/TransactionManager;->isSubscriptionFlow:Z

    .line 56
    return-void
.end method

.method public startTransaction(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 108
    const-string v0, "0.0.0"

    invoke-virtual {p0, p1, p2, v0}, Lcom/paytm/pgsdk/TransactionManager;->startTransaction(Landroid/app/Activity;ILjava/lang/String;)V

    .line 109
    return-void
.end method

.method public startTransaction(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "minPaytmAppVersion"    # Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/paytm/pgsdk/TransactionManager;->paytmOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v1, v2}, Lcom/paytm/pgsdk/AnalyticsManager;->getEventLabelString(Lcom/paytm/pgsdk/PaytmOrder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK_initialized"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/TransactionManager;->getPaytmVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "currentAppVersion":Ljava/lang/String;
    invoke-static {p1}, Lcom/paytm/pgsdk/PaytmUtility;->isPaytmAppInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/paytm/pgsdk/TransactionManager;->enableAppInvoke:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p3}, Lcom/paytm/pgsdk/TransactionManager;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/paytm/pgsdk/TransactionManager;->isSubscriptionFlow()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "8.10.8"

    invoke-direct {p0, v0, v1}, Lcom/paytm/pgsdk/TransactionManager;->versionCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/TransactionManager;->startRedirectionFlow(Landroid/content/Context;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/paytm/pgsdk/TransactionManager;->startPaytmAppInvoke(Landroid/app/Activity;I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-boolean v1, p0, Lcom/paytm/pgsdk/TransactionManager;->enableRedirectionFlow:Z

    if-eqz v1, :cond_2

    .line 98
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    const-string v2, "Paytm_App_invoke"

    const-string v3, "AppInvoke"

    const-string v4, "status"

    const-string v5, "fail"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v1

    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/paytm/pgsdk/TransactionManager;->paytmOrder:Lcom/paytm/pgsdk/PaytmOrder;

    invoke-virtual {v2, v3}, Lcom/paytm/pgsdk/AnalyticsManager;->getEventLabelString(Lcom/paytm/pgsdk/PaytmOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "webview-bridge"

    const-string v4, "Redirection"

    invoke-virtual {v1, v3, v4, v2}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/paytm/pgsdk/TransactionManager;->startRedirectionFlow(Landroid/content/Context;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/paytm/pgsdk/TransactionManager;->mPaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    const-string v2, "Some Error Occurred in Selected payment Flow . Please  enableRedirectionFlow true "

    invoke-interface {v1, v2}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onErrorProceed(Ljava/lang/String;)V

    .line 103
    const-string v1, "No payment flow opted"

    invoke-static {v1}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void
.end method

.method public startTransactionForONUS(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 112
    const-string v0, "8.12.8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/paytm/pgsdk/TransactionManager;->startTransaction(Landroid/app/Activity;ILjava/lang/String;)V

    .line 113
    return-void
.end method
