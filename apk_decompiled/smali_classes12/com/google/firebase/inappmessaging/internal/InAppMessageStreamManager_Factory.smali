.class public final Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;
.super Ljava/lang/Object;
.source "InAppMessageStreamManager_Factory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final abtIntegrationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsEventsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final apiClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final appForegroundEventFlowableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final appForegroundRateLimitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            ">;"
        }
    .end annotation
.end field

.field private final campaignCacheClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final dataCollectionHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseInstallationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;"
        }
    .end annotation
.end field

.field private final impressionStorageClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            ">;"
        }
    .end annotation
.end field

.field private final programmaticTriggerEventFlowableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rateLimiterClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            ">;"
        }
    .end annotation
.end field

.field private final testDeviceHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "appForegroundEventFlowableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;>;"
    .local p2, "programmaticTriggerEventFlowableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;>;"
    .local p3, "campaignCacheClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;>;"
    .local p4, "clockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/time/Clock;>;"
    .local p5, "apiClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/ApiClient;>;"
    .local p6, "analyticsEventsManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;>;"
    .local p7, "schedulersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/Schedulers;>;"
    .local p8, "impressionStorageClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;>;"
    .local p9, "rateLimiterClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;>;"
    .local p10, "appForegroundRateLimitProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/model/RateLimit;>;"
    .local p11, "testDeviceHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;>;"
    .local p12, "firebaseInstallationsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/installations/FirebaseInstallationsApi;>;"
    .local p13, "dataCollectionHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;>;"
    .local p14, "abtIntegrationHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->appForegroundEventFlowableProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->programmaticTriggerEventFlowableProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->campaignCacheClientProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->apiClientProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->analyticsEventsManagerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p7, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->schedulersProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p8, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->impressionStorageClientProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p9, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->rateLimiterClientProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p10, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->appForegroundRateLimitProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p11, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->testDeviceHelperProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p12, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->firebaseInstallationsProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p13, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->dataCollectionHelperProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p14, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->abtIntegrationHelperProvider:Ljavax/inject/Provider;

    .line 76
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;"
        }
    .end annotation

    .line 97
    .local p0, "appForegroundEventFlowableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;>;"
    .local p1, "programmaticTriggerEventFlowableProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;>;"
    .local p2, "campaignCacheClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;>;"
    .local p3, "clockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/time/Clock;>;"
    .local p4, "apiClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/ApiClient;>;"
    .local p5, "analyticsEventsManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;>;"
    .local p6, "schedulersProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/Schedulers;>;"
    .local p7, "impressionStorageClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;>;"
    .local p8, "rateLimiterClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;>;"
    .local p9, "appForegroundRateLimitProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/model/RateLimit;>;"
    .local p10, "testDeviceHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;>;"
    .local p11, "firebaseInstallationsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/installations/FirebaseInstallationsApi;>;"
    .local p12, "dataCollectionHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;>;"
    .local p13, "abtIntegrationHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;>;"
    new-instance v15, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v15
.end method

.method public static newInstance(Lio/reactivex/flowables/ConnectableFlowable;Lio/reactivex/flowables/ConnectableFlowable;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;)Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;
    .locals 16
    .param p2, "campaignCacheClient"    # Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;
    .param p3, "clock"    # Lcom/google/firebase/inappmessaging/internal/time/Clock;
    .param p4, "apiClient"    # Lcom/google/firebase/inappmessaging/internal/ApiClient;
    .param p5, "analyticsEventsManager"    # Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;
    .param p6, "schedulers"    # Lcom/google/firebase/inappmessaging/internal/Schedulers;
    .param p7, "impressionStorageClient"    # Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;
    .param p8, "rateLimiterClient"    # Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;
    .param p9, "appForegroundRateLimit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
    .param p10, "testDeviceHelper"    # Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;
    .param p11, "firebaseInstallations"    # Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .param p12, "dataCollectionHelper"    # Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;
    .param p13, "abtIntegrationHelper"    # Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            "Lcom/google/firebase/inappmessaging/internal/Schedulers;",
            "Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            "Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;",
            "Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;",
            ")",
            "Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;"
        }
    .end annotation

    .line 109
    .local p0, "appForegroundEventFlowable":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;"
    .local p1, "programmaticTriggerEventFlowable":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;"
    new-instance v15, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;-><init>(Lio/reactivex/flowables/ConnectableFlowable;Lio/reactivex/flowables/ConnectableFlowable;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;)V

    return-object v15
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;
    .locals 15

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->appForegroundEventFlowableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/reactivex/flowables/ConnectableFlowable;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->programmaticTriggerEventFlowableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/reactivex/flowables/ConnectableFlowable;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->campaignCacheClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/inappmessaging/internal/time/Clock;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->apiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/inappmessaging/internal/ApiClient;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->analyticsEventsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->schedulersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/firebase/inappmessaging/internal/Schedulers;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->impressionStorageClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->rateLimiterClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->appForegroundRateLimitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/firebase/inappmessaging/model/RateLimit;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->testDeviceHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->firebaseInstallationsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->dataCollectionHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->abtIntegrationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    invoke-static/range {v1 .. v14}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->newInstance(Lio/reactivex/flowables/ConnectableFlowable;Lio/reactivex/flowables/ConnectableFlowable;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;)Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager_Factory;->get()Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    move-result-object v0

    return-object v0
.end method
