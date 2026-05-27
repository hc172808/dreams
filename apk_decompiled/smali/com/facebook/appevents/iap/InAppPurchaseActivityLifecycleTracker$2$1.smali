.class Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2$1;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2;

    .line 118
    iput-object p1, p0, Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2$1;->this$0:Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 121
    .local v0, "this":Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2$1;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    .local v1, "context":Landroid/content/Context;
    nop

    .line 123
    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker;->access$000()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 124
    .local v2, "purchasesInapp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker;->access$100(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 126
    nop

    .line 127
    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker;->access$000()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/appevents/iap/InAppPurchaseEventManager;->getPurchasesSubs(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 128
    .local v3, "purchasesSubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker;->access$100(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker$2$1;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "purchasesInapp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "purchasesSubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
