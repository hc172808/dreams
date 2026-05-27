.class public Lcom/facebook/appevents/iap/InAppPurchaseEventManager;
.super Ljava/lang/Object;
.source "InAppPurchaseEventManager.java"


# static fields
.field private static final AS_INTERFACE:Ljava/lang/String; = "asInterface"

.field private static final CACHE_CLEAR_TIME_LIMIT_SEC:I = 0x93a80

.field private static final DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final GET_PURCHASES:Ljava/lang/String; = "getPurchases"

.field private static final GET_PURCHASE_HISTORY:Ljava/lang/String; = "getPurchaseHistory"

.field private static final GET_SKU_DETAILS:Ljava/lang/String; = "getSkuDetails"

.field private static final INAPP:Ljava/lang/String; = "inapp"

.field private static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final IN_APP_BILLING_SERVICE:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService"

.field private static final IN_APP_BILLING_SERVICE_STUB:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final IS_BILLING_SUPPORTED:Ljava/lang/String; = "isBillingSupported"

.field private static final ITEM_ID_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final LAST_CLEARED_TIME:Ljava/lang/String; = "LAST_CLEARED_TIME"

.field private static final MAX_QUERY_PURCHASE_NUM:I = 0x1e

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final PURCHASE_EXPIRE_TIME_SEC:I = 0x15180

.field private static final PURCHASE_INAPP_STORE:Ljava/lang/String; = "com.facebook.internal.PURCHASE"

.field private static final PURCHASE_STOP_QUERY_TIME_SEC:I = 0x4b0

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final SKU_DETAILS_STORE:Ljava/lang/String; = "com.facebook.internal.SKU_DETAILS"

.field private static final SKU_DETAIL_EXPIRE_TIME_SEC:I = 0xa8c0

.field private static final SUBSCRIPTION:Ljava/lang/String; = "subs"

.field private static final classMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

.field private static final skuDetailSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    .line 82
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    const-string v1, "com.facebook.internal.SKU_DETAILS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    .line 90
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    const-string v1, "com.facebook.internal.PURCHASE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 5

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 95
    .local p0, "context":Landroid/content/Context;
    .local p1, "service":Landroid/os/IBinder;
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 96
    .local v1, "args":[Ljava/lang/Object;
    const-string v3, "com.android.vending.billing.IInAppBillingService$Stub"

    const-string v4, "asInterface"

    invoke-static {p0, v3, v4, v2, v1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "args":[Ljava/lang/Object;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static clearSkuDetailsCache()V
    .locals 12

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    const-string v1, "LAST_CLEARED_TIME"

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 448
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 451
    .local v2, "nowSec":J
    sget-object v4, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 452
    .local v7, "lastClearedTimeSec":J
    cmp-long v9, v7, v5

    if-nez v9, :cond_1

    .line 453
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 454
    :cond_1
    sub-long v5, v2, v7

    const-wide/32 v9, 0x93a80

    cmp-long v11, v5, v9

    if-lez v11, :cond_2

    .line 455
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_2
    :goto_0
    return-void

    .end local v2    # "nowSec":J
    .end local v7    # "lastClearedTimeSec":J
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static filterPurchases(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v3, p0

    .line 334
    .local v3, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 335
    .local v4, "filteredPurchase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v5, v0

    .line 336
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 337
    .local v6, "nowSec":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 339
    .local v11, "purchase":Ljava/lang/String;
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "purchaseJson":Lorg/json/JSONObject;
    const-string v12, "productId"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "sku":Ljava/lang/String;
    const-string v13, "purchaseTime"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 342
    .local v13, "purchaseTimeMillis":J
    const-string v15, "purchaseToken"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, "purchaseToken":Ljava/lang/String;
    div-long v16, v13, v8

    sub-long v16, v6, v16

    const-wide/32 v18, 0x15180

    cmp-long v20, v16, v18

    if-lez v20, :cond_1

    .line 344
    goto :goto_0

    .line 347
    :cond_1
    sget-object v8, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    const-string v9, ""

    invoke-interface {v8, v12, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, "historyPurchaseToken":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 350
    const-wide/16 v8, 0x3e8

    goto :goto_0

    .line 353
    :cond_2
    invoke-interface {v5, v12, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    .end local v0    # "purchaseJson":Lorg/json/JSONObject;
    .end local v8    # "historyPurchaseToken":Ljava/lang/String;
    .end local v12    # "sku":Ljava/lang/String;
    .end local v13    # "purchaseTimeMillis":J
    .end local v15    # "purchaseToken":Ljava/lang/String;
    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    .line 358
    .end local v11    # "purchase":Ljava/lang/String;
    :goto_1
    const-wide/16 v8, 0x3e8

    goto :goto_0

    .line 360
    :cond_3
    :try_start_2
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    return-object v4

    .end local v3    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "filteredPurchase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "nowSec":J
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 404
    .local p0, "context":Landroid/content/Context;
    .local p1, "className":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .local v3, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1

    .line 406
    return-object v3

    .line 410
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 411
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 416
    :goto_0
    return-object v3

    .end local v3    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 367
    .local p0, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "methodName":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    .line 369
    return-object v3

    .line 373
    :cond_1
    const/4 v4, 0x0

    .line 374
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v6, "getSkuDetails"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v6, "getPurchaseHistory"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_2
    const-string v6, "asInterface"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_3
    const-string v6, "isBillingSupported"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_4
    const-string v6, "getPurchases"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x3

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 388
    :pswitch_0
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v11

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v9

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v7

    move-object v4, v5

    goto :goto_1

    .line 385
    :pswitch_1
    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v11

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v9

    move-object v4, v5

    .line 386
    goto :goto_1

    .line 382
    :pswitch_2
    new-array v5, v9, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v11

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    move-object v4, v5

    .line 383
    goto :goto_1

    .line 379
    :pswitch_3
    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v11

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v9

    move-object v4, v5

    .line 380
    goto :goto_1

    .line 376
    :pswitch_4
    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v10

    move-object v4, v5

    .line 377
    nop

    .line 393
    :goto_1
    invoke-virtual {p0, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 394
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    nop

    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_2

    .line 395
    :catch_0
    move-exception v0

    .line 399
    :goto_2
    return-object v3

    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local p0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "methodName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b5af324 -> :sswitch_4
        -0x5677d643 -> :sswitch_3
        -0x42f2e6d9 -> :sswitch_2
        -0x236d29e3 -> :sswitch_1
        -0x222c05a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v3, p0

    .local v3, "context":Landroid/content/Context;
    move-object/from16 v4, p2

    .local v4, "type":Ljava/lang/String;
    move-object/from16 v5, p1

    .line 280
    .local v5, "inAppBillingObj":Ljava/lang/Object;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 282
    .local v6, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3, v5, v4}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "continuationToken":Ljava/lang/String;
    const/4 v7, 0x0

    .line 285
    .local v7, "queriedPurchaseNum":I
    const/4 v8, 0x0

    .line 288
    .local v8, "reachTimeLimit":Z
    :goto_0
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    sget-object v10, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v0, v9, v10

    const/4 v10, 0x4

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    aput-object v11, v9, v10

    .line 289
    .local v9, "args":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 291
    .end local v0    # "continuationToken":Ljava/lang/String;
    .local v10, "continuationToken":Ljava/lang/String;
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    const-string v11, "getPurchaseHistory"

    .line 292
    invoke-static {v3, v0, v11, v5, v9}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    .line 294
    .local v11, "result":Ljava/lang/Object;
    if-eqz v11, :cond_4

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 296
    .local v12, "nowSec":J
    move-object v0, v11

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 p0, v0

    .line 297
    .local p0, "purchaseDetails":Landroid/os/Bundle;
    const-string v0, "RESPONSE_CODE"

    move-object/from16 v2, p0

    .end local p0    # "purchaseDetails":Landroid/os/Bundle;
    .local v2, "purchaseDetails":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    .line 298
    .local v16, "response":I
    if-nez v16, :cond_4

    .line 299
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    .line 300
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v17, v0

    .line 301
    .local v17, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v17, :cond_1

    .line 302
    goto :goto_4

    .line 305
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 p0, v0

    .line 307
    .local p0, "detail":Ljava/lang/String;
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v14, p0

    .end local p0    # "detail":Ljava/lang/String;
    .local v14, "detail":Ljava/lang/String;
    :try_start_2
    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "detailJson":Lorg/json/JSONObject;
    const-string v15, "purchaseTime"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v21, 0x3e8

    :try_start_3
    div-long v19, v19, v21

    .line 310
    .local v19, "purchaseTimeSec":J
    sub-long v23, v12, v19

    const-wide/16 v25, 0x4b0

    cmp-long v15, v23, v25

    if-lez v15, :cond_2

    .line 311
    const/4 v8, 0x1

    .line 312
    goto :goto_3

    .line 314
    :cond_2
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    add-int/lit8 v7, v7, 0x1

    .line 319
    .end local v0    # "detailJson":Lorg/json/JSONObject;
    .end local v19    # "purchaseTimeSec":J
    goto :goto_2

    .line 317
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-wide/16 v21, 0x3e8

    goto :goto_2

    .end local v14    # "detail":Ljava/lang/String;
    .restart local p0    # "detail":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-wide/from16 v21, v14

    move-object/from16 v14, p0

    .line 320
    .end local p0    # "detail":Ljava/lang/String;
    :goto_2
    move-wide/from16 v14, v21

    goto :goto_1

    .line 322
    :cond_3
    :goto_3
    :try_start_4
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v10    # "continuationToken":Ljava/lang/String;
    .local v0, "continuationToken":Ljava/lang/String;
    goto :goto_5

    .line 325
    .end local v0    # "continuationToken":Ljava/lang/String;
    .end local v2    # "purchaseDetails":Landroid/os/Bundle;
    .end local v9    # "args":[Ljava/lang/Object;
    .end local v11    # "result":Ljava/lang/Object;
    .end local v12    # "nowSec":J
    .end local v16    # "response":I
    .end local v17    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "continuationToken":Ljava/lang/String;
    :cond_4
    :goto_4
    move-object v0, v10

    .end local v10    # "continuationToken":Ljava/lang/String;
    .restart local v0    # "continuationToken":Ljava/lang/String;
    :goto_5
    const/16 v2, 0x1e

    if-ge v7, v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v8, :cond_5

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 330
    .end local v0    # "continuationToken":Ljava/lang/String;
    .end local v7    # "queriedPurchaseNum":I
    .end local v8    # "reachTimeLimit":Z
    :cond_6
    :goto_6
    return-object v6

    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "inAppBillingObj":Ljava/lang/Object;
    .end local v6    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method static getPurchaseHistoryInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 256
    .local p0, "context":Landroid/content/Context;
    .local p1, "inAppBillingObj":Ljava/lang/Object;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 259
    return-object v1

    .line 262
    :cond_1
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    invoke-static {p0, v3}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 263
    .local v3, "iapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_2

    .line 264
    return-object v1

    .line 267
    :cond_2
    const-string v4, "getPurchaseHistory"

    invoke-static {v3, v4}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 268
    .local v4, "method":Ljava/lang/reflect/Method;
    if-nez v4, :cond_3

    .line 269
    return-object v1

    .line 272
    :cond_3
    const-string v5, "inapp"

    invoke-static {p0, p1, v5}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, v5

    .line 274
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->filterPurchases(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "iapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "inAppBillingObj":Ljava/lang/Object;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 205
    .local p0, "context":Landroid/content/Context;
    .local p1, "inAppBillingObj":Ljava/lang/Object;
    .local p2, "type":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v1, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 208
    return-object v1

    .line 211
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 213
    const/4 v3, 0x0

    .line 214
    .local v3, "continuationToken":Ljava/lang/String;
    const/4 v4, 0x0

    .line 217
    .local v4, "queriedPurchaseNum":I
    :cond_2
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    sget-object v8, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v8, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    aput-object v3, v5, v7

    .line 218
    .local v5, "args":[Ljava/lang/Object;
    const-string v6, "com.android.vending.billing.IInAppBillingService"

    const-string v7, "getPurchases"

    .line 219
    invoke-static {p0, v6, v7, p1, v5}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 221
    .local v6, "result":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 223
    if-eqz v6, :cond_3

    .line 224
    move-object v7, v6

    check-cast v7, Landroid/os/Bundle;

    .line 225
    .local v7, "purchaseDetails":Landroid/os/Bundle;
    const-string v8, "RESPONSE_CODE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 226
    .local v8, "response":I
    if-nez v8, :cond_3

    .line 227
    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    .line 228
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 229
    .local v9, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    .line 230
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v4, v10

    .line 231
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    const-string v10, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v10

    .line 238
    .end local v5    # "args":[Ljava/lang/Object;
    .end local v6    # "result":Ljava/lang/Object;
    .end local v7    # "purchaseDetails":Landroid/os/Bundle;
    .end local v8    # "response":I
    .end local v9    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/16 v5, 0x1e

    if-ge v4, v5, :cond_4

    if-nez v3, :cond_2

    .line 241
    .end local v3    # "continuationToken":Ljava/lang/String;
    .end local v4    # "queriedPurchaseNum":I
    :cond_4
    return-object v1

    .end local v1    # "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "inAppBillingObj":Ljava/lang/Object;
    .end local p2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 196
    .local p0, "context":Landroid/content/Context;
    .local p1, "inAppBillingObj":Ljava/lang/Object;
    :cond_0
    :try_start_0
    const-string v1, "inapp"

    invoke-static {p0, p1, v1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->filterPurchases(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "inAppBillingObj":Ljava/lang/Object;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getPurchasesSubs(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 200
    .local p0, "context":Landroid/content/Context;
    .local p1, "inAppBillingObj":Ljava/lang/Object;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "subs"

    invoke-static {p0, p1, v1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->filterPurchases(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "inAppBillingObj":Ljava/lang/Object;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 102
    .local p0, "context":Landroid/content/Context;
    .local p1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "inAppBillingObj":Ljava/lang/Object;
    .local p3, "isSubscription":Z
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->readSkuDetailsFromCache(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v1

    .line 104
    .local v1, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v3, "unresolvedSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 106
    .local v5, "sku":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v5    # "sku":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 111
    :cond_2
    nop

    .line 112
    invoke-static {p0, v3, p2, p3}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getSkuDetailsFromGoogle(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v4

    .line 111
    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    return-object v1

    .end local v1    # "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "unresolvedSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p2    # "inAppBillingObj":Ljava/lang/Object;
    .end local p3    # "isSubscription":Z
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getSkuDetailsFromGoogle(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 120
    .local p0, "context":Landroid/content/Context;
    .local p1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "inAppBillingObj":Ljava/lang/Object;
    .local p3, "isSubscription":Z
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v1, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 126
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v3, "querySkus":Landroid/os/Bundle;
    const-string v4, "ITEM_ID_LIST"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 128
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 129
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    sget-object v5, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    if-eqz p3, :cond_2

    const-string/jumbo v7, "subs"

    goto :goto_0

    :cond_2
    const-string v7, "inapp"

    :goto_0
    aput-object v7, v4, v5

    aput-object v3, v4, v6

    .line 131
    .local v4, "args":[Ljava/lang/Object;
    const-string v5, "com.android.vending.billing.IInAppBillingService"

    const-string v6, "getSkuDetails"

    .line 132
    invoke-static {p0, v5, v6, p2, v4}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 134
    .local v5, "result":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 135
    move-object v6, v5

    check-cast v6, Landroid/os/Bundle;

    .line 136
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v7, "RESPONSE_CODE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 137
    .local v7, "response":I
    if-nez v7, :cond_4

    .line 138
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 139
    .local v8, "skuDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 140
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 141
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 145
    .end local v9    # "i":I
    :cond_3
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->writeSkuDetailsToCache(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "response":I
    .end local v8    # "skuDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-object v1

    .line 123
    .end local v3    # "querySkus":Landroid/os/Bundle;
    .end local v4    # "args":[Ljava/lang/Object;
    .end local v5    # "result":Ljava/lang/Object;
    :cond_5
    :goto_2
    return-object v1

    .line 149
    .end local v1    # "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p2    # "inAppBillingObj":Ljava/lang/Object;
    .end local p3    # "isSubscription":Z
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static hasFreeTrialPeirod(Ljava/lang/String;)Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 246
    .local p0, "skuDetail":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "skuDetailsJson":Lorg/json/JSONObject;
    const-string v3, "freeTrialPeriod"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "freeTrialPeriod":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 252
    .end local v1    # "skuDetailsJson":Lorg/json/JSONObject;
    .end local v3    # "freeTrialPeriod":Ljava/lang/String;
    .end local p0    # "skuDetail":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2

    .line 249
    .restart local p0    # "skuDetail":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 252
    return v2
.end method

.method private static invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 422
    .local p0, "context":Landroid/content/Context;
    .local p1, "className":Ljava/lang/String;
    .local p2, "methodName":Ljava/lang/String;
    .local p3, "obj":Ljava/lang/Object;
    .local p4, "args":[Ljava/lang/Object;
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 423
    .local v1, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 424
    return-object v2

    .line 427
    :cond_1
    invoke-static {v1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 428
    .local v3, "methodObj":Ljava/lang/reflect/Method;
    if-nez v3, :cond_2

    .line 429
    return-object v2

    .line 432
    :cond_2
    if-eqz p3, :cond_3

    .line 433
    invoke-virtual {v1, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p3, v4

    .line 437
    :cond_3
    :try_start_1
    invoke-virtual {v3, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0

    .line 438
    :catch_1
    move-exception v0

    .line 442
    nop

    .line 444
    :goto_0
    return-object v2

    .end local v1    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "methodObj":Ljava/lang/reflect/Method;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "className":Ljava/lang/String;
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "obj":Ljava/lang/Object;
    .end local p4    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 184
    .local p0, "context":Landroid/content/Context;
    .local p1, "inAppBillingObj":Ljava/lang/Object;
    .local p2, "type":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 185
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 188
    :cond_1
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    sget-object v3, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object p2, v4, v3

    move-object v3, v4

    .line 189
    .local v3, "args":[Ljava/lang/Object;
    const-string v4, "com.android.vending.billing.IInAppBillingService"

    const-string v6, "isBillingSupported"

    .line 190
    invoke-static {p0, v4, v6, p1, v3}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    .local v4, "result":Ljava/lang/Object;
    if-eqz v4, :cond_2

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "inAppBillingObj":Ljava/lang/Object;
    .end local p2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static readSkuDetailsFromCache(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .line 154
    .local v0, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v3, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 157
    .local v4, "nowSec":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 158
    .local v7, "sku":Ljava/lang/String;
    sget-object v8, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "rawString":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 160
    const-string v9, ";"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "splitted":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 162
    .local v10, "timeSec":J
    sub-long v12, v4, v10

    const-wide/32 v14, 0xa8c0

    cmp-long v16, v12, v14

    if-gez v16, :cond_1

    .line 163
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-interface {v3, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v7    # "sku":Ljava/lang/String;
    .end local v8    # "rawString":Ljava/lang/String;
    .end local v9    # "splitted":[Ljava/lang/String;
    .end local v10    # "timeSec":J
    :cond_1
    goto :goto_0

    .line 168
    :cond_2
    return-object v3

    .end local v0    # "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "nowSec":J
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static writeSkuDetailsToCache(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 172
    .local p0, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 174
    .local v1, "nowSec":J
    sget-object v3, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 175
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 176
    .local v5, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    nop

    .end local v5    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    return-void

    .end local v1    # "nowSec":J
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local p0    # "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
