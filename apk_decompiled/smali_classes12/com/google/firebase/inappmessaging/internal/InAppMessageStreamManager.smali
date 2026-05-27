.class public Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;
.super Ljava/lang/Object;
.source "InAppMessageStreamManager.java"


# static fields
.field public static final ON_FOREGROUND:Ljava/lang/String; = "ON_FOREGROUND"


# instance fields
.field private final abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

.field private final analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

.field private final apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

.field private final appForegroundEventFlowable:Lio/reactivex/flowables/ConnectableFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

.field private final campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field private final programmaticTriggerEventFlowable:Lio/reactivex/flowables/ConnectableFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

.field private final schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

.field private final testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;


# direct methods
.method public constructor <init>(Lio/reactivex/flowables/ConnectableFlowable;Lio/reactivex/flowables/ConnectableFlowable;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ApiClient;Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;)V
    .locals 0
    .param p1    # Lio/reactivex/flowables/ConnectableFlowable;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/flowables/ConnectableFlowable;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
        .end annotation
    .end param
    .param p3, "campaignCacheClient"    # Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;
    .param p4, "clock"    # Lcom/google/firebase/inappmessaging/internal/time/Clock;
    .param p5, "apiClient"    # Lcom/google/firebase/inappmessaging/internal/ApiClient;
    .param p6, "analyticsEventsManager"    # Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;
    .param p7, "schedulers"    # Lcom/google/firebase/inappmessaging/internal/Schedulers;
    .param p8, "impressionStorageClient"    # Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;
    .param p9, "rateLimiterClient"    # Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;
    .param p10, "appForegroundRateLimit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
        .end annotation
    .end param
    .param p11, "testDeviceHelper"    # Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;
    .param p12, "firebaseInstallations"    # Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .param p13, "dataCollectionHelper"    # Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;
    .param p14, "abtIntegrationHelper"    # Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;
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
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 83
    .local p1, "appForegroundEventFlowable":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;"
    .local p2, "programmaticTriggerEventFlowable":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundEventFlowable:Lio/reactivex/flowables/ConnectableFlowable;

    .line 85
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->programmaticTriggerEventFlowable:Lio/reactivex/flowables/ConnectableFlowable;

    .line 86
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    .line 87
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    .line 88
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

    .line 89
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    .line 90
    iput-object p7, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    .line 91
    iput-object p8, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    .line 92
    iput-object p9, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    .line 93
    iput-object p10, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    .line 94
    iput-object p11, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    .line 95
    iput-object p13, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    .line 96
    iput-object p12, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 97
    iput-object p14, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    .line 98
    return-void
.end method

.method static cacheExpiringResponse()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .locals 3

    .line 387
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->newBuilder()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse$Builder;->setExpirationEpochTimestampMillis(J)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    return-object v0
.end method

.method private static compareByPriority(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)I
    .locals 2
    .param p0, "content1"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .param p1, "content2"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 144
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, -0x1

    return v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static containsTriggeringCondition(Ljava/lang/String;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Z
    .locals 5
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 101
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    return v1

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getTriggeringConditionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 105
    .local v2, "condition":Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    invoke-static {v2, p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->hasFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2, p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->hasAnalyticsTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 109
    .end local v2    # "condition":Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    :cond_1
    goto :goto_0

    .line 106
    .restart local v2    # "condition":Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    :cond_2
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string v3, "The event %s is contained in the list of triggers"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 107
    return v1

    .line 110
    .end local v2    # "condition":Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    :cond_3
    return v3
.end method

.method private getContentIfNotRateLimited(Ljava/lang/String;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/Maybe;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-virtual {p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    .line 303
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->isRateLimited(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$oU-xOAV0GkbvPZtWnU61S19_YAQ;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$oU-xOAV0GkbvPZtWnU61S19_YAQ;

    .line 304
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    const/4 v1, 0x0

    .line 306
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$pYtAzYsTczP6mQPwQjeYCezGBiw;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$pYtAzYsTczP6mQPwQjeYCezGBiw;

    .line 307
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$BR90xUuqA0TH59_j8lZgqLWefKc;

    invoke-direct {v1, p2}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$BR90xUuqA0TH59_j8lZgqLWefKc;-><init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 308
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 302
    return-object v0

    .line 310
    :cond_0
    invoke-static {p2}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method private getTriggeredInAppMessageMaybe(Ljava/lang/String;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Lio/reactivex/Maybe;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p5, "response"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/functions/Function<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            "Lio/reactivex/Maybe<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            ">;>;",
            "Lio/reactivex/functions/Function<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            "Lio/reactivex/Maybe<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            ">;>;",
            "Lio/reactivex/functions/Function<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            "Lio/reactivex/Maybe<",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            ">;>;",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;",
            ">;"
        }
    .end annotation

    .line 333
    .local p2, "filterAlreadyImpressed":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;>;>;"
    .local p3, "appForegroundRateLimitFilter":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;>;>;"
    .local p4, "filterDisplayable":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;>;>;"
    invoke-virtual {p5}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->getMessagesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Flowable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$1hp46ZWb32o85pPgdMKCz4JR2-4;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$1hp46ZWb32o85pPgdMKCz4JR2-4;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;)V

    .line 334
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$Ou-YsL_IUqLtZLmeXPKgxx6cGb0;

    invoke-direct {v1, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$Ou-YsL_IUqLtZLmeXPKgxx6cGb0;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p2}, Lio/reactivex/Flowable;->flatMapMaybe(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p3}, Lio/reactivex/Flowable;->flatMapMaybe(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 338
    invoke-virtual {v0, p4}, Lio/reactivex/Flowable;->flatMapMaybe(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UaReWLEs1KuSRqPfwxIJAxu1eXQ;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UaReWLEs1KuSRqPfwxIJAxu1eXQ;

    .line 339
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->sorted(Ljava/util/Comparator;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lio/reactivex/Flowable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$w4tUspl0-bTh48AvRyCAZ0a1mSM;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$w4tUspl0-bTh48AvRyCAZ0a1mSM;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 333
    return-object v0
.end method

.method private static hasAnalyticsTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z
    .locals 1
    .param p0, "tc"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .param p1, "event"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static hasFiamTrigger(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;Ljava/lang/String;)Z
    .locals 1
    .param p0, "tc"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .param p1, "event"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getFiamTrigger()Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isActive(Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Z
    .locals 8
    .param p0, "clock"    # Lcom/google/firebase/inappmessaging/internal/time/Clock;
    .param p1, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 124
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    sget-object v1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->VANILLA_PAYLOAD:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    invoke-virtual {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignStartTimeMillis()J

    move-result-wide v2

    .line 127
    .local v2, "campaignStartTime":J
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignEndTimeMillis()J

    move-result-wide v4

    .local v4, "campaignEndTime":J
    goto :goto_0

    .line 128
    .end local v2    # "campaignStartTime":J
    .end local v4    # "campaignEndTime":J
    :cond_0
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    sget-object v2, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->EXPERIMENTAL_PAYLOAD:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    invoke-virtual {v0, v2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignStartTimeMillis()J

    move-result-wide v2

    .line 131
    .restart local v2    # "campaignStartTime":J
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignEndTimeMillis()J

    move-result-wide v4

    .line 136
    .restart local v4    # "campaignEndTime":J
    :goto_0
    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v6

    .line 137
    .local v6, "currentTime":J
    cmp-long v0, v6, v2

    if-lez v0, :cond_1

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 134
    .end local v2    # "campaignStartTime":J
    .end local v4    # "campaignEndTime":J
    .end local v6    # "currentTime":J
    :cond_2
    return v1
.end method

.method public static isAppForegroundEvent(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Z
    .locals 2
    .param p0, "event"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 154
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getFiamTrigger()Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Trigger;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAppForegroundEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .line 158
    const-string v0, "ON_FOREGROUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$AiAaCQ3qsVI6xCnO-1y3DNtSS44(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->validIID(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$UaReWLEs1KuSRqPfwxIJAxu1eXQ(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->compareByPriority(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$0(Ljava/lang/String;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event Triggered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$1(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 1
    .param p0, "r"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    const-string v0, "Fetched from cache"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$10(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/Boolean;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 0
    .param p0, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .param p1, "isImpressed"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    return-object p0
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$13(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/Maybe;
    .locals 2
    .param p0, "thickContent"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$1;->$SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase:[I

    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content;->getMessageDetailsCase()Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    const-string v0, "Filtering non-displayable message"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0

    .line 219
    :pswitch_0
    invoke-static {p0}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$15(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Impressions store read fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$17(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 4
    .param p0, "resp"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->getMessagesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 266
    const-string v2, "Successfully fetched %d messages from backend"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$19(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service fetch error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$2(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache read error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$3()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    const-string v0, "Wrote to cache"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$4(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache write error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$5(Ljava/lang/Throwable;)Lio/reactivex/CompletableSource;
    .locals 1
    .param p0, "ignored"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$7(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Impression store read fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$8(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .param p1, "isImpressed"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->logImpressionStatus(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic lambda$createFirebaseInAppMessageStream$9(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "isImpressed"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getContentIfNotRateLimited$22(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "isRateLimited"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App foreground rate limited ? : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getContentIfNotRateLimited$23(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "isRateLimited"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getContentIfNotRateLimited$24(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/Boolean;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .locals 0
    .param p0, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .param p1, "isRateLimited"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    return-object p0
.end method

.method static synthetic lambda$getTriggeredInAppMessageMaybe$26(Ljava/lang/String;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Z
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->containsTriggeringCondition(Ljava/lang/String;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$taskToMaybe$28(Lio/reactivex/MaybeEmitter;Ljava/lang/Object;)V
    .locals 0
    .param p0, "emitter"    # Lio/reactivex/MaybeEmitter;
    .param p1, "result"    # Ljava/lang/Object;

    .line 395
    invoke-interface {p0, p1}, Lio/reactivex/MaybeEmitter;->onSuccess(Ljava/lang/Object;)V

    .line 396
    invoke-interface {p0}, Lio/reactivex/MaybeEmitter;->onComplete()V

    .line 397
    return-void
.end method

.method static synthetic lambda$taskToMaybe$29(Lio/reactivex/MaybeEmitter;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "emitter"    # Lio/reactivex/MaybeEmitter;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 400
    invoke-interface {p0, p1}, Lio/reactivex/MaybeEmitter;->onError(Ljava/lang/Throwable;)V

    .line 401
    invoke-interface {p0}, Lio/reactivex/MaybeEmitter;->onComplete()V

    .line 402
    return-void
.end method

.method static synthetic lambda$taskToMaybe$30(Lcom/google/android/gms/tasks/Task;Lio/reactivex/MaybeEmitter;)V
    .locals 1
    .param p0, "task"    # Lcom/google/android/gms/tasks/Task;
    .param p1, "emitter"    # Lio/reactivex/MaybeEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$zqaunH2Yj-cT8ObjR8rnPSVzIJw;

    invoke-direct {v0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$zqaunH2Yj-cT8ObjR8rnPSVzIJw;-><init>(Lio/reactivex/MaybeEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 398
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$bBC9cOEqwF4R7Pz750ACFIA5yII;

    invoke-direct {v0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$bBC9cOEqwF4R7Pz750ACFIA5yII;-><init>(Lio/reactivex/MaybeEmitter;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 403
    return-void
.end method

.method private static logImpressionStatus(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .param p1, "isImpressed"    # Ljava/lang/Boolean;

    .line 314
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    sget-object v1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->VANILLA_PAYLOAD:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    invoke-virtual {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 315
    new-array v0, v3, [Ljava/lang/Object;

    .line 318
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    .line 316
    const-string v1, "Already impressed campaign %s ? : %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    sget-object v4, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->EXPERIMENTAL_PAYLOAD:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    invoke-virtual {v0, v4}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    new-array v0, v3, [Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    .line 321
    const-string v1, "Already impressed experiment %s ? : %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 325
    :cond_1
    :goto_0
    return-void
.end method

.method private shouldIgnoreCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isAppInstallFresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result v0

    return v0
.end method

.method private static taskToMaybe(Lcom/google/android/gms/tasks/Task;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .line 391
    .local p0, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TT;>;"
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$yD5D3yc-awpxMaIhgu_ITxdj2Dg;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$yD5D3yc-awpxMaIhgu_ITxdj2Dg;-><init>(Lcom/google/android/gms/tasks/Task;)V

    invoke-static {v0}, Lio/reactivex/Maybe;->create(Lio/reactivex/MaybeOnSubscribe;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method private triggeredInAppMessage(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/String;)Lio/reactivex/Maybe;
    .locals 5
    .param p1, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;",
            ">;"
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    sget-object v1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->VANILLA_PAYLOAD:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    invoke-virtual {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "campaignId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignName()Ljava/lang/String;

    move-result-object v1

    .local v1, "campaignName":Ljava/lang/String;
    goto :goto_0

    .line 351
    .end local v0    # "campaignId":Ljava/lang/String;
    .end local v1    # "campaignName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    sget-object v1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->EXPERIMENTAL_PAYLOAD:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    invoke-virtual {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0    # "campaignId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignName()Ljava/lang/String;

    move-result-object v1

    .line 357
    .restart local v1    # "campaignName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    .line 359
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getExperimentPayload()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v3

    .line 358
    invoke-virtual {v2, v3}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;->setExperimentActive(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 364
    :cond_1
    :goto_0
    nop

    .line 366
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v2

    .line 369
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v3

    .line 370
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v4

    .line 365
    invoke-static {v2, v0, v1, v3, v4}, Lcom/google/firebase/inappmessaging/model/ProtoMarshallerClient;->decode(Lcom/google/firebase/inappmessaging/MessagesProto$Content;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object v2

    .line 371
    .local v2, "inAppMessage":Lcom/google/firebase/inappmessaging/model/InAppMessage;
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/model/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 372
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v3

    return-object v3

    .line 375
    :cond_2
    new-instance v3, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;

    invoke-direct {v3, v2, p2}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;-><init>(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)V

    invoke-static {v3}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v3

    return-object v3

    .line 362
    .end local v0    # "campaignId":Ljava/lang/String;
    .end local v1    # "campaignName":Ljava/lang/String;
    .end local v2    # "inAppMessage":Lcom/google/firebase/inappmessaging/model/InAppMessage;
    :cond_3
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method private static validIID(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Z
    .locals 1
    .param p0, "iid"    # Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;

    .line 379
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationTokenResult()Lcom/google/firebase/installations/InstallationTokenResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0
.end method


# virtual methods
.method public createFirebaseInAppMessageStream()Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->appForegroundEventFlowable:Lio/reactivex/flowables/ConnectableFlowable;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    .line 171
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->getAnalyticsEventsFlowable()Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->programmaticTriggerEventFlowable:Lio/reactivex/flowables/ConnectableFlowable;

    .line 169
    invoke-static {v0, v1, v2}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$O6KWy7KyHq4fM3TS1nWbovcPYNg;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$O6KWy7KyHq4fM3TS1nWbovcPYNg;

    .line 173
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    .line 174
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$TdPqPU1Dqcq1F9SlQW6jc33rWTw;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$TdPqPU1Dqcq1F9SlQW6jc33rWTw;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;)V

    .line 175
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    .line 297
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method public synthetic lambda$createFirebaseInAppMessageStream$11$InAppMessageStreamManager(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/Maybe;
    .locals 2
    .param p1, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p1}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    .line 199
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->isImpressed(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$kqDuFAOHMfNU-QrgklwWBiJ8R6Q;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$kqDuFAOHMfNU-QrgklwWBiJ8R6Q;

    .line 200
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    const/4 v1, 0x0

    .line 204
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorResumeNext(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$gdVUhnrxFf3P3sSGAbtFQRxADtA;

    invoke-direct {v1, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$gdVUhnrxFf3P3sSGAbtFQRxADtA;-><init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 205
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xoQwavTxF-PxKmNh_lcWYwCmE0s;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xoQwavTxF-PxKmNh_lcWYwCmE0s;

    .line 206
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$5nur4W3mbfH6409zvxwnV8GjELQ;

    invoke-direct {v1, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$5nur4W3mbfH6409zvxwnV8GjELQ;-><init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 207
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0
.end method

.method public synthetic lambda$createFirebaseInAppMessageStream$12$InAppMessageStreamManager(Ljava/lang/String;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/Maybe;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->getContentIfNotRateLimited(Ljava/lang/String;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$createFirebaseInAppMessageStream$14$InAppMessageStreamManager(Ljava/lang/String;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Lio/reactivex/Maybe;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "filterAlreadyImpressed"    # Lio/reactivex/functions/Function;
    .param p3, "appForegroundRateLimitFilter"    # Lio/reactivex/functions/Function;
    .param p4, "filterDisplayable"    # Lio/reactivex/functions/Function;
    .param p5, "response"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->getTriggeredInAppMessageMaybe(Ljava/lang/String;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$createFirebaseInAppMessageStream$16$InAppMessageStreamManager(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .locals 1
    .param p1, "campaignImpressionList"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    .param p2, "iid"    # Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->apiClient:Lcom/google/firebase/inappmessaging/internal/ApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getFiams(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$createFirebaseInAppMessageStream$18$InAppMessageStreamManager(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 1
    .param p1, "resp"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->clearImpressions(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$createFirebaseInAppMessageStream$20$InAppMessageStreamManager(Lio/reactivex/Maybe;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)Lio/reactivex/Maybe;
    .locals 3
    .param p1, "getIID"    # Lio/reactivex/Maybe;
    .param p2, "campaignImpressionList"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "Automatic data collection is disabled, not attempting campaign fetch from service."

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->cacheExpiringResponse()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$AiAaCQ3qsVI6xCnO-1y3DNtSS44;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$AiAaCQ3qsVI6xCnO-1y3DNtSS44;

    .line 260
    invoke-virtual {p1, v0}, Lio/reactivex/Maybe;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VxyUxgR76CW5pjlBPvp43BItTTQ;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VxyUxgR76CW5pjlBPvp43BItTTQ;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V

    .line 261
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 262
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->cacheExpiringResponse()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$LNOfxhnXwRRH7GB9_aFg4VBBARs;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$LNOfxhnXwRRH7GB9_aFg4VBBARs;

    .line 263
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$IB2y7MgH-IgK4mL_Z5nLPi5EIDc;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$IB2y7MgH-IgK4mL_Z5nLPi5EIDc;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;)V

    .line 270
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->analyticsEventsManager:Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    .line 272
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$o8U9rtRfnvT7CfHjKHVazosHEJE;

    invoke-direct {v2, v1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$o8U9rtRfnvT7CfHjKHVazosHEJE;-><init>(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    .line 273
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$JuECYLRUZ20m-graAdtlox2RtIQ;

    invoke-direct {v2, v1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$JuECYLRUZ20m-graAdtlox2RtIQ;-><init>(Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$mdiS8pn1rNw88XtAgWHnoX-sUt4;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$mdiS8pn1rNw88XtAgWHnoX-sUt4;

    .line 274
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 275
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->onErrorResumeNext(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method public synthetic lambda$createFirebaseInAppMessageStream$21$InAppMessageStreamManager(Ljava/lang/String;)Lorg/reactivestreams/Publisher;
    .locals 12
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    .line 179
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->get()Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VvopoV2GPqto1N6SEOi318T8CqM;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$VvopoV2GPqto1N6SEOi318T8CqM;

    .line 180
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ONBxt7FNqq7qRDBP-Nz5rZzz_pg;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ONBxt7FNqq7qRDBP-Nz5rZzz_pg;

    .line 181
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 182
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->onErrorResumeNext(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 184
    .local v0, "cacheRead":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;>;"
    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$RLlA25kHH3QEJgWLGhC5m5AuXIs;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$RLlA25kHH3QEJgWLGhC5m5AuXIs;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;)V

    .line 194
    .local v1, "cacheWrite":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;>;"
    new-instance v5, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$s2tF1uzIk4XQDSrk61OeTUWuiQw;

    invoke-direct {v5, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$s2tF1uzIk4XQDSrk61OeTUWuiQw;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;)V

    .line 209
    .local v5, "filterAlreadyImpressed":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;>;>;"
    new-instance v6, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$5Au05l5Jzy7hHWOt2sovZqglwB8;

    invoke-direct {v6, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$5Au05l5Jzy7hHWOt2sovZqglwB8;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;)V

    .line 212
    .local v6, "appForegroundRateLimitFilter":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;>;>;"
    sget-object v8, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$SFUzQiRuhaqG6k58Bbrn3hUc6JI;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$SFUzQiRuhaqG6k58Bbrn3hUc6JI;

    .line 227
    .local v8, "filterDisplayable":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;>;>;"
    new-instance v9, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$O5Tj80svbOEKQjtoHvDsd_pcHMs;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$O5Tj80svbOEKQjtoHvDsd_pcHMs;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    .line 236
    .local v2, "selectThickContent":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;Lio/reactivex/Maybe<Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;>;>;"
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    .line 238
    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()Lio/reactivex/Maybe;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UNLm4ryV4iGpr-z5eCm6k1pylSE;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$UNLm4ryV4iGpr-z5eCm6k1pylSE;

    .line 239
    invoke-virtual {v3, v4}, Lio/reactivex/Maybe;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v3

    .line 241
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Maybe;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v3

    .line 242
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    move-result-object v4

    invoke-static {v4}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Maybe;->onErrorResumeNext(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v3

    .line 244
    .local v3, "alreadySeenCampaigns":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;>;"
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 246
    invoke-interface {v4}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->taskToMaybe(Lcom/google/android/gms/tasks/Task;)Lio/reactivex/Maybe;

    move-result-object v4

    iget-object v7, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 247
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    invoke-static {v7}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->taskToMaybe(Lcom/google/android/gms/tasks/Task;)Lio/reactivex/Maybe;

    move-result-object v7

    sget-object v10, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$hje_uZ6H6v9Wn3La3BcP27r480M;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$hje_uZ6H6v9Wn3La3BcP27r480M;

    .line 245
    invoke-static {v4, v7, v10}, Lio/reactivex/Maybe;->zip(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Maybe;

    move-result-object v4

    iget-object v7, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    .line 249
    invoke-virtual {v7}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v4

    .line 251
    .local v4, "getIID":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;>;"
    new-instance v7, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$T6hACkuC0mDbtRpq24gdwgSW298;

    invoke-direct {v7, p0, v4}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$T6hACkuC0mDbtRpq24gdwgSW298;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lio/reactivex/Maybe;)V

    .line 278
    .local v7, "serviceFetch":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;>;>;"
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->shouldIgnoreCache(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 279
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    .line 283
    invoke-virtual {v11}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v9

    const/4 v9, 0x1

    iget-object v11, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    .line 284
    invoke-virtual {v11}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isAppInstallFresh()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v9

    .line 280
    const-string v9, "Forcing fetch from service rather than cache. Test Device: %s | App Fresh Install: %s"

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 279
    invoke-static {v9}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 285
    nop

    .line 286
    invoke-virtual {v3, v7}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v9

    .line 287
    invoke-virtual {v9, v2}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v9

    .line 288
    invoke-virtual {v9}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v9

    .line 285
    return-object v9

    .line 291
    :cond_0
    const-string v9, "Attempting to fetch campaigns using cache"

    invoke-static {v9}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 292
    nop

    .line 293
    invoke-virtual {v3, v7}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v9

    invoke-virtual {v9, v1}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v9

    invoke-virtual {v0, v9}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v9

    .line 294
    invoke-virtual {v9, v2}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v9

    .line 295
    invoke-virtual {v9}, Lio/reactivex/Maybe;->toFlowable()Lio/reactivex/Flowable;

    move-result-object v9

    .line 292
    return-object v9
.end method

.method public synthetic lambda$createFirebaseInAppMessageStream$6$InAppMessageStreamManager(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    .line 187
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->put(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xfQ4lhVfteTSysOSBHsRJ_dhRaQ;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$xfQ4lhVfteTSysOSBHsRJ_dhRaQ;

    .line 188
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$jeZpENxTAXbowOrcPL9UEbmpTEM;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$jeZpENxTAXbowOrcPL9UEbmpTEM;

    .line 189
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ypbeLf2gyh6IXwPDyL7zy-7JWHQ;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$ypbeLf2gyh6IXwPDyL7zy-7JWHQ;

    .line 190
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 186
    return-void
.end method

.method public synthetic lambda$getTriggeredInAppMessageMaybe$25$InAppMessageStreamManager(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Z
    .locals 1
    .param p1, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->testDeviceHelper:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isDeviceInTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isActive(Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic lambda$getTriggeredInAppMessageMaybe$27$InAppMessageStreamManager(Ljava/lang/String;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/MaybeSource;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->triggeredInAppMessage(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method
