.class public Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
.super Ljava/lang/Object;
.source "InAppPurchaseSkuDetailsWrapper.java"


# static fields
.field private static final CLASSNAME_SKU_DETAILS_PARAMS:Ljava/lang/String; = "com.android.billingclient.api.SkuDetailsParams"

.field private static final CLASSNAME_SKU_DETAILS_PARAMS_BUILDER:Ljava/lang/String; = "com.android.billingclient.api.SkuDetailsParams$Builder"

.field private static final METHOD_BUILD:Ljava/lang/String; = "build"

.field private static final METHOD_NEW_BUILDER:Ljava/lang/String; = "newBuilder"

.field private static final METHOD_SET_SKU_LIST:Ljava/lang/String; = "setSkusList"

.field private static final METHOD_SET_TYPE:Ljava/lang/String; = "setType"

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mInstance:Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;


# instance fields
.field private final buildMethod:Ljava/lang/reflect/Method;

.field private final builderClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final newBuilderMethod:Ljava/lang/reflect/Method;

.field private final setSkusListMethod:Ljava/lang/reflect/Method;

.field private final setTypeMethod:Ljava/lang/reflect/Method;

.field private final skuDetailsParamsClazz:Ljava/lang/Class;
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

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->mInstance:Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p3, "newBuilderMethod"    # Ljava/lang/reflect/Method;
    .param p4, "setTypeMethod"    # Ljava/lang/reflect/Method;
    .param p5, "setSkusListMethod"    # Ljava/lang/reflect/Method;
    .param p6, "buildMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 58
    .local p1, "skuDetailsParamsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->skuDetailsParamsClazz:Ljava/lang/Class;

    .line 60
    iput-object p2, p0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->builderClazz:Ljava/lang/Class;

    .line 61
    iput-object p3, p0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->newBuilderMethod:Ljava/lang/reflect/Method;

    .line 62
    iput-object p4, p0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->setTypeMethod:Ljava/lang/reflect/Method;

    .line 63
    iput-object p5, p0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->setSkusListMethod:Ljava/lang/reflect/Method;

    .line 64
    iput-object p6, p0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->buildMethod:Ljava/lang/reflect/Method;

    .line 65
    return-void
.end method

.method private static createInstance()V
    .locals 15

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 78
    :cond_0
    :try_start_0
    const-string v1, "com.android.billingclient.api.SkuDetailsParams"

    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    .local v1, "skuDetailsParamsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "com.android.billingclient.api.SkuDetailsParams$Builder"

    invoke-static {v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v9, v2

    .line 80
    .local v9, "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_4

    if-nez v9, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    const-string v2, "newBuilder"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 85
    invoke-static {v1, v2, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v10, v2

    .line 86
    .local v10, "newBuilderMethod":Ljava/lang/reflect/Method;
    const-string v2, "setType"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    .line 87
    invoke-static {v9, v2, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v11, v2

    .line 88
    .local v11, "setTypeMethod":Ljava/lang/reflect/Method;
    const-string v2, "setSkusList"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/util/List;

    aput-object v5, v4, v3

    .line 89
    invoke-static {v9, v2, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v12, v2

    .line 90
    .local v12, "setSkusListMethod":Ljava/lang/reflect/Method;
    const-string v2, "build"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v9, v2, v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v13, v2

    .line 91
    .local v13, "buildMethod":Ljava/lang/reflect/Method;
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    if-eqz v12, :cond_3

    if-nez v13, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    new-instance v14, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

    move-object v2, v14

    move-object v3, v1

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v2 .. v8}, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v14, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->mInstance:Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    return-void

    .line 95
    :cond_3
    :goto_0
    return-void

    .line 81
    .end local v10    # "newBuilderMethod":Ljava/lang/reflect/Method;
    .end local v11    # "setTypeMethod":Ljava/lang/reflect/Method;
    .end local v12    # "setSkusListMethod":Ljava/lang/reflect/Method;
    .end local v13    # "buildMethod":Ljava/lang/reflect/Method;
    :cond_4
    :goto_1
    return-void

    .line 105
    .end local v1    # "skuDetailsParamsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "builderClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static getOrCreateInstance()Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    .locals 4

    const-class v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 69
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->mInstance:Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;

    return-object v0

    .line 72
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->createInstance()V

    .line 73
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->mInstance:Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public getSkuDetailsParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 114
    .local v0, "this":Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    .local p1, "skuType":Ljava/lang/String;
    .local p2, "skuIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->skuDetailsParamsClazz:Ljava/lang/Class;

    iget-object v3, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "builder":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 116
    return-object v1

    .line 120
    :cond_1
    iget-object v3, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->builderClazz:Ljava/lang/Class;

    iget-object v5, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->setTypeMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v3, v5, v2, v7}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 121
    if-nez v2, :cond_2

    .line 122
    return-object v1

    .line 126
    :cond_2
    iget-object v3, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->builderClazz:Ljava/lang/Class;

    iget-object v5, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->setSkusListMethod:Ljava/lang/reflect/Method;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v4

    invoke-static {v3, v5, v2, v6}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 127
    if-nez v2, :cond_3

    .line 128
    return-object v1

    .line 132
    :cond_3
    iget-object v3, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->builderClazz:Ljava/lang/Class;

    iget-object v5, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->buildMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v2, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .end local v0    # "this":Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    .end local v2    # "builder":Ljava/lang/Object;
    .end local p1    # "skuType":Ljava/lang/String;
    .end local p2    # "skuIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getSkuDetailsParamsClazz()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 108
    .local v0, "this":Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;->skuDetailsParamsClazz:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .end local v0    # "this":Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
