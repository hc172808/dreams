.class public Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$SkuDetailsResponseListenerWrapper;,
        Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchaseHistoryResponseListenerWrapper;,
        Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchasesUpdatedListenerWrapper;,
        Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$BillingClientStateListenerWrapper;
    }
.end annotation


# static fields
.field private static final CLASSNAME_BILLING_CLIENT:Ljava/lang/String; = "com.android.billingclient.api.BillingClient"

.field private static final CLASSNAME_BILLING_CLIENT_BUILDER:Ljava/lang/String; = "com.android.billingclient.api.BillingClient$Builder"

.field private static final CLASSNAME_BILLING_CLIENT_STATE_LISTENER:Ljava/lang/String; = "com.android.billingclient.api.BillingClientStateListener"

.field private static final CLASSNAME_PURCHASE:Ljava/lang/String; = "com.android.billingclient.api.Purchase"

.field private static final CLASSNAME_PURCHASES_RESULT:Ljava/lang/String; = "com.android.billingclient.api.Purchase$PurchasesResult"

.field private static final CLASSNAME_PURCHASE_HISTORY_RECORD:Ljava/lang/String; = "com.android.billingclient.api.PurchaseHistoryRecord"

.field private static final CLASSNAME_PURCHASE_HISTORY_RESPONSE_LISTENER:Ljava/lang/String; = "com.android.billingclient.api.PurchaseHistoryResponseListener"

.field private static final CLASSNAME_PURCHASE_UPDATED_LISTENER:Ljava/lang/String; = "com.android.billingclient.api.PurchasesUpdatedListener"

.field private static final CLASSNAME_SKU_DETAILS:Ljava/lang/String; = "com.android.billingclient.api.SkuDetails"

.field private static final CLASSNAME_SKU_DETAILS_RESPONSE_LISTENER:Ljava/lang/String; = "com.android.billingclient.api.SkuDetailsResponseListener"

.field private static final IN_APP:Ljava/lang/String; = "inapp"

.field private static final METHOD_BUILD:Ljava/lang/String; = "build"

.field private static final METHOD_ENABLE_PENDING_PURCHASES:Ljava/lang/String; = "enablePendingPurchases"

.field private static final METHOD_GET_ORIGINAL_JSON:Ljava/lang/String; = "getOriginalJson"

.field private static final METHOD_GET_PURCHASE_LIST:Ljava/lang/String; = "getPurchasesList"

.field private static final METHOD_NEW_BUILDER:Ljava/lang/String; = "newBuilder"

.field private static final METHOD_ON_BILLING_SERVICE_DISCONNECTED:Ljava/lang/String; = "onBillingServiceDisconnected"

.field private static final METHOD_ON_BILLING_SETUP_FINISHED:Ljava/lang/String; = "onBillingSetupFinished"

.field private static final METHOD_ON_PURCHASE_HISTORY_RESPONSE:Ljava/lang/String; = "onPurchaseHistoryResponse"

.field private static final METHOD_ON_SKU_DETAILS_RESPONSE:Ljava/lang/String; = "onSkuDetailsResponse"

.field private static final METHOD_QUERY_PURCHASES:Ljava/lang/String; = "queryPurchases"

.field private static final METHOD_QUERY_PURCHASE_HISTORY_ASYNC:Ljava/lang/String; = "queryPurchaseHistoryAsync"

.field private static final METHOD_QUERY_SKU_DETAILS_ASYNC:Ljava/lang/String; = "querySkuDetailsAsync"

.field private static final METHOD_SET_LISTENER:Ljava/lang/String; = "setListener"

.field private static final METHOD_START_CONNECTION:Ljava/lang/String; = "startConnection"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final PRODUCT_ID:Ljava/lang/String; = "productId"

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final isServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mInstance:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

.field public static final purchaseDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final skuDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PurchaseHistoryRecordClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final billingClient:Ljava/lang/Object;

.field private final billingClientClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final getOriginalJsonMethod:Ljava/lang/reflect/Method;

.field private final getOriginalJsonPurchaseHistoryMethod:Ljava/lang/reflect/Method;

.field private final getOriginalJsonSkuMethod:Ljava/lang/reflect/Method;

.field private final getPurchaseListMethod:Ljava/lang/reflect/Method;

.field private final historyPurchaseSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppPurchaseSkuDetailsWrapper:Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

.field private final purchaseClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final purchaseHistoryResponseListenerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final purchaseResultClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final queryPurchaseHistoryAsyncMethod:Ljava/lang/reflect/Method;

.field private final queryPurchasesMethod:Ljava/lang/reflect/Method;

.field private final querySkuDetailsAsyncMethod:Ljava/lang/reflect/Method;

.field private final skuDetailsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final skuDetailsResponseListenerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->mInstance:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->isServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseDetailsMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->skuDetailsMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "billingClient"    # Ljava/lang/Object;
    .param p10, "queryPurchasesMethod"    # Ljava/lang/reflect/Method;
    .param p11, "getPurchaseListsMethod"    # Ljava/lang/reflect/Method;
    .param p12, "getOriginalJsonMethod"    # Ljava/lang/reflect/Method;
    .param p13, "getOriginalJsonSkuMethod"    # Ljava/lang/reflect/Method;
    .param p14, "getOriginalJsonPurchaseHistoryMethod"    # Ljava/lang/reflect/Method;
    .param p15, "querySkuDetailsAsyncMethod"    # Ljava/lang/reflect/Method;
    .param p16, "queryPurchaseHistoryAsyncMethod"    # Ljava/lang/reflect/Method;
    .param p17, "inAppPurchaseSkuDetailsWrapper"    # Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;",
            ")V"
        }
    .end annotation

    .line 128
    .local p3, "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p7, "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p8, "skuDetailsResponseListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p9, "purchaseHistoryResponseListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->historyPurchaseSet:Ljava/util/Set;

    .line 129
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->context:Landroid/content/Context;

    .line 130
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    .line 131
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    .line 132
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseResultClazz:Ljava/lang/Class;

    .line 133
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseClazz:Ljava/lang/Class;

    .line 134
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->skuDetailsClazz:Ljava/lang/Class;

    .line 135
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->PurchaseHistoryRecordClazz:Ljava/lang/Class;

    .line 136
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->skuDetailsResponseListenerClazz:Ljava/lang/Class;

    .line 137
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseHistoryResponseListenerClazz:Ljava/lang/Class;

    .line 138
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchasesMethod:Ljava/lang/reflect/Method;

    .line 139
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getPurchaseListMethod:Ljava/lang/reflect/Method;

    .line 140
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getOriginalJsonMethod:Ljava/lang/reflect/Method;

    .line 141
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getOriginalJsonSkuMethod:Ljava/lang/reflect/Method;

    .line 142
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getOriginalJsonPurchaseHistoryMethod:Ljava/lang/reflect/Method;

    .line 143
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->querySkuDetailsAsyncMethod:Ljava/lang/reflect/Method;

    .line 144
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryAsyncMethod:Ljava/lang/reflect/Method;

    .line 145
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->inAppPurchaseSkuDetailsWrapper:Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;)Ljava/util/Set;
    .locals 3

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 41
    .local p0, "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->historyPurchaseSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic access$100(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 41
    .local p0, "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .local p1, "x1":Ljava/lang/String;
    .local p2, "x2":Ljava/util/List;
    .local p3, "x3":Ljava/lang/Runnable;
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local p0    # "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .end local p1    # "x1":Ljava/lang/String;
    .end local p2    # "x2":Ljava/util/List;
    .end local p3    # "x3":Ljava/lang/Runnable;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;
    .locals 3

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 41
    .local p0, "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->PurchaseHistoryRecordClazz:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic access$300(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;)Ljava/lang/reflect/Method;
    .locals 3

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 41
    .local p0, "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getOriginalJsonPurchaseHistoryMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic access$400(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;)Landroid/content/Context;
    .locals 3

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 41
    .local p0, "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic access$500(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;
    .locals 3

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 41
    .local p0, "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->skuDetailsClazz:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic access$600(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;)Ljava/lang/reflect/Method;
    .locals 3

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 41
    .local p0, "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getOriginalJsonSkuMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static createBillingClient(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 249
    .local p0, "context":Landroid/content/Context;
    .local p1, "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    const-string v1, "com.android.billingclient.api.BillingClient$Builder"

    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 250
    .local v1, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "com.android.billingclient.api.PurchasesUpdatedListener"

    invoke-static {v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 251
    .local v3, "listenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_7

    if-nez v3, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    const-string v4, "newBuilder"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 256
    invoke-static {p1, v4, v6}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 257
    .local v4, "newBuilderMethod":Ljava/lang/reflect/Method;
    const-string v6, "enablePendingPurchases"

    new-array v7, v8, [Ljava/lang/Class;

    .line 258
    invoke-static {v1, v6, v7}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 259
    .local v6, "enablePendingPurchasesMethod":Ljava/lang/reflect/Method;
    const-string v7, "setListener"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v3, v9, v8

    .line 260
    invoke-static {v1, v7, v9}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 261
    .local v7, "setListenerMethod":Ljava/lang/reflect/Method;
    const-string v9, "build"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-static {v1, v9, v10}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 262
    .local v9, "buildMethod":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    if-nez v9, :cond_2

    goto :goto_0

    .line 270
    :cond_2
    new-array v10, v5, [Ljava/lang/Object;

    aput-object p0, v10, v8

    .line 271
    invoke-static {p1, v4, v2, v10}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 272
    .local v10, "builder":Ljava/lang/Object;
    if-nez v10, :cond_3

    .line 273
    return-object v2

    .line 277
    :cond_3
    nop

    .line 279
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Class;

    aput-object v3, v12, v8

    new-instance v13, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchasesUpdatedListenerWrapper;

    invoke-direct {v13}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchasesUpdatedListenerWrapper;-><init>()V

    .line 278
    invoke-static {v11, v12, v13}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v11

    .line 282
    .local v11, "listenerObj":Ljava/lang/Object;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v8

    .line 283
    invoke-static {v1, v7, v10, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 284
    .end local v10    # "builder":Ljava/lang/Object;
    .local v5, "builder":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 285
    return-object v2

    .line 289
    :cond_4
    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v1, v6, v5, v10}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    .line 290
    if-nez v5, :cond_5

    .line 291
    return-object v2

    .line 295
    :cond_5
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v9, v5, v8}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 266
    .end local v5    # "builder":Ljava/lang/Object;
    .end local v11    # "listenerObj":Ljava/lang/Object;
    :cond_6
    :goto_0
    return-object v2

    .line 252
    .end local v4    # "newBuilderMethod":Ljava/lang/reflect/Method;
    .end local v6    # "enablePendingPurchasesMethod":Ljava/lang/reflect/Method;
    .end local v7    # "setListenerMethod":Ljava/lang/reflect/Method;
    .end local v9    # "buildMethod":Ljava/lang/reflect/Method;
    :cond_7
    :goto_1
    return-object v2

    .line 295
    .end local v1    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "listenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static createInstance(Landroid/content/Context;)V
    .locals 37

    const-class v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    const-string v0, "getOriginalJson"

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p0

    .line 161
    .local v2, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->getOrCreateInstance()Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

    move-result-object v3

    move-object/from16 v21, v3

    .line 162
    .local v21, "inAppPurchaseSkuDetailsWrapper":Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    if-nez v21, :cond_1

    .line 163
    return-void

    .line 166
    :cond_1
    const-string v3, "com.android.billingclient.api.BillingClient"

    invoke-static {v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v15, v3

    .line 167
    .local v15, "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "com.android.billingclient.api.Purchase"

    invoke-static {v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v14, v3

    .line 168
    .local v14, "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "com.android.billingclient.api.Purchase$PurchasesResult"

    invoke-static {v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v13, v3

    .line 169
    .local v13, "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "com.android.billingclient.api.SkuDetails"

    invoke-static {v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v12, v3

    .line 170
    .local v12, "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "com.android.billingclient.api.PurchaseHistoryRecord"

    .line 171
    invoke-static {v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v11, v3

    .line 173
    .local v11, "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "com.android.billingclient.api.SkuDetailsResponseListener"

    .line 174
    invoke-static {v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v22, v3

    .line 175
    .local v22, "skuDetailsResponseListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "com.android.billingclient.api.PurchaseHistoryResponseListener"

    .line 176
    invoke-static {v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v23, v3

    .line 178
    .local v23, "purchaseHistoryResponseListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v15, :cond_6

    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    if-eqz v22, :cond_6

    if-eqz v11, :cond_6

    if-nez v23, :cond_2

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    goto/16 :goto_1

    .line 188
    :cond_2
    const-string v3, "queryPurchases"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 189
    invoke-static {v15, v3, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v24, v3

    .line 190
    .local v24, "queryPurchasesMethod":Ljava/lang/reflect/Method;
    const-string v3, "getPurchasesList"

    new-array v5, v7, [Ljava/lang/Class;

    .line 191
    invoke-static {v13, v3, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v25, v3

    .line 192
    .local v25, "getPurchaseListMethod":Ljava/lang/reflect/Method;
    new-array v3, v7, [Ljava/lang/Class;

    .line 193
    invoke-static {v14, v0, v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v26, v3

    .line 194
    .local v26, "getOriginalJsonMethod":Ljava/lang/reflect/Method;
    new-array v3, v7, [Ljava/lang/Class;

    .line 195
    invoke-static {v12, v0, v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v27, v3

    .line 196
    .local v27, "getOriginalJsonSkuMethod":Ljava/lang/reflect/Method;
    new-array v3, v7, [Ljava/lang/Class;

    .line 197
    invoke-static {v11, v0, v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    .local v0, "getOriginalJsonPurchaseHistoryMethod":Ljava/lang/reflect/Method;
    const-string v3, "querySkuDetailsAsync"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 202
    invoke-virtual/range {v21 .. v21}, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->getSkuDetailsParamsClazz()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v22, v6, v4

    .line 199
    invoke-static {v15, v3, v6}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v28, v3

    .line 204
    .local v28, "querySkuDetailsAsyncMethod":Ljava/lang/reflect/Method;
    const-string v3, "queryPurchaseHistoryAsync"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v23, v5, v4

    .line 205
    invoke-static {v15, v3, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v29, v3

    .line 210
    .local v29, "queryPurchaseHistoryAsyncMethod":Ljava/lang/reflect/Method;
    if-eqz v24, :cond_5

    if-eqz v25, :cond_5

    if-eqz v26, :cond_5

    if-eqz v27, :cond_5

    if-eqz v0, :cond_5

    if-eqz v28, :cond_5

    if-nez v29, :cond_3

    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    goto :goto_0

    .line 220
    :cond_3
    invoke-static {v2, v15}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->createBillingClient(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    .line 221
    .local v30, "billingClient":Ljava/lang/Object;
    if-nez v30, :cond_4

    .line 222
    return-void

    .line 225
    :cond_4
    new-instance v31, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    move-object/from16 v3, v31

    move-object v4, v2

    move-object/from16 v5, v30

    move-object v6, v15

    move-object v7, v13

    move-object v8, v14

    move-object v9, v12

    move-object v10, v11

    move-object/from16 v32, v11

    .end local v11    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v32, "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v11, v22

    move-object/from16 v33, v12

    .end local v12    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v33, "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v12, v23

    move-object/from16 v34, v13

    .end local v13    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v34, "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v13, v24

    move-object/from16 v35, v14

    .end local v14    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v35, "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v14, v25

    move-object/from16 v36, v15

    .end local v15    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v36, "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v15, v26

    move-object/from16 v16, v27

    move-object/from16 v17, v0

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v21

    invoke-direct/range {v3 .. v20}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;)V

    sput-object v31, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->mInstance:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    .line 244
    invoke-direct/range {v31 .. v31}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->startConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    return-void

    .line 210
    .end local v30    # "billingClient":Ljava/lang/Object;
    .end local v32    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v35    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .line 217
    .end local v11    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v32    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v33    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v34    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v35    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v36    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 178
    .end local v0    # "getOriginalJsonPurchaseHistoryMethod":Ljava/lang/reflect/Method;
    .end local v24    # "queryPurchasesMethod":Ljava/lang/reflect/Method;
    .end local v25    # "getPurchaseListMethod":Ljava/lang/reflect/Method;
    .end local v26    # "getOriginalJsonMethod":Ljava/lang/reflect/Method;
    .end local v27    # "getOriginalJsonSkuMethod":Ljava/lang/reflect/Method;
    .end local v28    # "querySkuDetailsAsyncMethod":Ljava/lang/reflect/Method;
    .end local v29    # "queryPurchaseHistoryAsyncMethod":Ljava/lang/reflect/Method;
    .end local v32    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v35    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v32, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .line 185
    .end local v11    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v32    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v33    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v34    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v35    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v36    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 245
    .end local v2    # "context":Landroid/content/Context;
    .end local v21    # "inAppPurchaseSkuDetailsWrapper":Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    .end local v22    # "skuDetailsResponseListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "purchaseHistoryResponseListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v32    # "PurchaseHistoryRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v33    # "skuDetailsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "purchaseResultClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v35    # "purchaseClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "billingClientClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getOrCreateInstance(Landroid/content/Context;)Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .locals 4

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 151
    .local p0, "context":Landroid/content/Context;
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->mInstance:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 154
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->createInstance(Landroid/content/Context;)V

    .line 155
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->mInstance:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v2

    .line 150
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private queryPurchaseHistoryAsync(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 359
    .local v0, "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .local p1, "skuType":Ljava/lang/String;
    .local p2, "runnable":Ljava/lang/Runnable;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseHistoryResponseListenerClazz:Ljava/lang/Class;

    .line 361
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    iget-object v4, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseHistoryResponseListenerClazz:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchaseHistoryResponseListenerWrapper;

    invoke-direct {v4, v0, p2}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchaseHistoryResponseListenerWrapper;-><init>(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V

    .line 360
    invoke-static {v1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 364
    .local v1, "listenerObj":Ljava/lang/Object;
    iget-object v3, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    iget-object v4, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryAsyncMethod:Ljava/lang/reflect/Method;

    iget-object v6, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object v1, v7, v2

    invoke-static {v3, v4, v6, v7}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .end local v1    # "listenerObj":Ljava/lang/Object;
    .end local p1    # "skuType":Ljava/lang/String;
    .end local p2    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 344
    .local v0, "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .local p1, "skuType":Ljava/lang/String;
    .local p2, "skuIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "runnable":Ljava/lang/Runnable;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->skuDetailsResponseListenerClazz:Ljava/lang/Class;

    .line 346
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    iget-object v4, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->skuDetailsResponseListenerClazz:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$SkuDetailsResponseListenerWrapper;

    invoke-direct {v4, v0, p3}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$SkuDetailsResponseListenerWrapper;-><init>(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V

    .line 345
    invoke-static {v1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 349
    .local v1, "listenerObj":Ljava/lang/Object;
    iget-object v3, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->inAppPurchaseSkuDetailsWrapper:Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

    invoke-virtual {v3, p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->getSkuDetailsParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 350
    .local v3, "skuDetailsParams":Ljava/lang/Object;
    iget-object v4, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    iget-object v6, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->querySkuDetailsAsyncMethod:Ljava/lang/reflect/Method;

    iget-object v7, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v5

    aput-object v1, v8, v2

    invoke-static {v4, v6, v7, v8}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .end local v1    # "listenerObj":Ljava/lang/Object;
    .end local v3    # "skuDetailsParams":Ljava/lang/Object;
    .end local p1    # "skuType":Ljava/lang/String;
    .end local p2    # "skuIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private startConnection()V
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 369
    .local v0, "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    :try_start_0
    const-string v1, "com.android.billingclient.api.BillingClientStateListener"

    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 370
    .local v1, "listenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 371
    return-void

    .line 373
    :cond_1
    iget-object v2, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    const-string/jumbo v3, "startConnection"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 374
    invoke-static {v2, v3, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 375
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_2

    .line 376
    return-void

    .line 379
    :cond_2
    nop

    .line 381
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v6

    new-instance v7, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$BillingClientStateListenerWrapper;

    invoke-direct {v7}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$BillingClientStateListenerWrapper;-><init>()V

    .line 380
    invoke-static {v3, v5, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 384
    .local v3, "listenerObj":Ljava/lang/Object;
    iget-object v5, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    iget-object v7, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v5, v2, v7, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .end local v1    # "listenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "listenerObj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public queryPurchase(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 12

    const-string v0, "productId"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 312
    .local v1, "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .local p1, "skuType":Ljava/lang/String;
    .local p2, "querySkuRunnable":Ljava/lang/Runnable;
    :try_start_0
    iget-object v2, v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClientClazz:Ljava/lang/Class;

    iget-object v3, v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchasesMethod:Ljava/lang/reflect/Method;

    iget-object v4, v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->billingClient:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "inapp"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 313
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 315
    .local v2, "purchaseResult":Ljava/lang/Object;
    iget-object v3, v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseResultClazz:Ljava/lang/Class;

    iget-object v4, v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getPurchaseListMethod:Ljava/lang/reflect/Method;

    new-array v5, v7, [Ljava/lang/Object;

    .line 316
    invoke-static {v3, v4, v2, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 317
    .local v3, "purchaseObjects":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 318
    return-void

    .line 322
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v4, "skuIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v3

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 324
    .local v6, "purchaseObject":Ljava/lang/Object;
    iget-object v8, v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseClazz:Ljava/lang/Class;

    iget-object v9, v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->getOriginalJsonMethod:Ljava/lang/reflect/Method;

    new-array v10, v7, [Ljava/lang/Object;

    .line 325
    invoke-static {v8, v9, v6, v10}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 326
    .local v8, "purchaseJsonStr":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-nez v9, :cond_2

    .line 327
    goto :goto_0

    .line 329
    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    .local v9, "purchaseJson":Lorg/json/JSONObject;
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 331
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, "skuID":Ljava/lang/String;
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v11, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->purchaseDetailsMap:Ljava/util/Map;

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v1    # "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .end local v6    # "purchaseObject":Ljava/lang/Object;
    .end local v8    # "purchaseJsonStr":Ljava/lang/Object;
    .end local v9    # "purchaseJson":Lorg/json/JSONObject;
    .end local v10    # "skuID":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 337
    :cond_4
    invoke-direct {v1, p1, v4, p2}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .end local v4    # "skuIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    .line 341
    :goto_1
    return-void

    .end local v2    # "purchaseResult":Ljava/lang/Object;
    .end local v3    # "purchaseObjects":Ljava/lang/Object;
    .end local p1    # "skuType":Ljava/lang/String;
    .end local p2    # "querySkuRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    invoke-static {p1, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public queryPurchaseHistory(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 299
    .local v0, "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .local p1, "skuType":Ljava/lang/String;
    .local p2, "queryPurchaseHistoryRunnable":Ljava/lang/Runnable;
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;

    invoke-direct {v1, v0, p2}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;-><init>(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V

    invoke-direct {v0, p1, v1}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchaseHistoryAsync(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;
    .end local p1    # "skuType":Ljava/lang/String;
    .end local p2    # "queryPurchaseHistoryRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
