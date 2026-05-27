.class Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->queryPurchaseHistory(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

.field final synthetic val$queryPurchaseHistoryRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    .line 301
    iput-object p1, p0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;->this$0:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    iput-object p2, p0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;->val$queryPurchaseHistoryRunnable:Ljava/lang/Runnable;

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

    .line 304
    .local v0, "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;->this$0:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    const-string v2, "inapp"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;->this$0:Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;

    .line 305
    invoke-static {v4}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->access$000(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v0, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;->val$queryPurchaseHistoryRunnable:Ljava/lang/Runnable;

    .line 304
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;->access$100(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$1;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
