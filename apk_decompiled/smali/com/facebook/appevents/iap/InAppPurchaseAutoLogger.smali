.class public Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;
.super Ljava/lang/Object;
.source "InAppPurchaseAutoLogger.java"


# static fields
.field private static final BILLING_CLIENT_PURCHASE_NAME:Ljava/lang/String; = "com.android.billingclient.api.Purchase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 2

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;->logPurchase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static logPurchase()V
    .locals 3

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 68
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseDetailsMap:Ljava/util/Map;

    sget-object v2, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->skuDetailsMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->filterPurchaseLogging(Ljava/util/Map;Ljava/util/Map;)V

    .line 71
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseDetailsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static startIapLogging(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 35
    .local p0, "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    const-string v1, "com.android.billingclient.api.Purchase"

    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 36
    return-void

    .line 38
    :cond_1
    nop

    .line 39
    invoke-static {p0}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getOrCreateInstance(Landroid/content/Context;)Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    move-result-object v1

    .line 40
    .local v1, "billingClientWrapper":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    if-nez v1, :cond_2

    .line 41
    return-void

    .line 44
    :cond_2
    sget-object v2, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->isServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;->eligibleQueryPurchaseHistory()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "inapp"

    if-eqz v2, :cond_3

    .line 46
    :try_start_1
    new-instance v2, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger$1;

    invoke-direct {v2}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger$1;-><init>()V

    invoke-virtual {v1, v3, v2}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchaseHistory(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 55
    :cond_3
    new-instance v2, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger$2;

    invoke-direct {v2}, Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger$2;-><init>()V

    invoke-virtual {v1, v3, v2}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchase(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_4
    :goto_0
    return-void

    .end local v1    # "billingClientWrapper":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
