.class public Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;
.super Ljava/lang/Object;
.source "DisplayCallbacksImpl.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;


# static fields
.field private static final MESSAGE_CLICK:Ljava/lang/String; = "message click to metrics logger"

.field private static wasImpressed:Z


# instance fields
.field private final appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

.field private final campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

.field private final impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

.field private final inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field private final metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

.field private final rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

.field private final schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

.field private final triggeringEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/Schedulers;Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)V
    .locals 1
    .param p1, "impressionStorageClient"    # Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;
    .param p2, "clock"    # Lcom/google/firebase/inappmessaging/internal/time/Clock;
    .param p3, "schedulers"    # Lcom/google/firebase/inappmessaging/internal/Schedulers;
    .param p4, "rateLimiterClient"    # Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;
    .param p5, "campaignCacheClient"    # Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;
    .param p6, "appForegroundRateLimit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
    .param p7, "metricsLoggerClient"    # Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;
    .param p8, "dataCollectionHelper"    # Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;
    .param p9, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .param p10, "triggeringEvent"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    .line 61
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    .line 62
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    .line 63
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    .line 64
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->campaignCacheClient:Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;

    .line 65
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    .line 66
    iput-object p7, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    .line 67
    iput-object p8, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    .line 68
    iput-object p9, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 69
    iput-object p10, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->triggeringEvent:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    .line 73
    return-void
.end method

.method private actionMatches(Lcom/google/firebase/inappmessaging/model/Action;Lcom/google/firebase/inappmessaging/model/Action;)Z
    .locals 2
    .param p1, "messageAction"    # Lcom/google/firebase/inappmessaging/model/Action;
    .param p2, "actionTaken"    # Lcom/google/firebase/inappmessaging/model/Action;

    .line 156
    if-nez p1, :cond_2

    .line 157
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

    .line 159
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$logToImpressionStore$5(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    const-string v0, "Impression store write failure"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$logToImpressionStore$6()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    const-string v0, "Impression store write success"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$logToImpressionStore$7(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    const-string v0, "Rate limiter client write failure"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$logToImpressionStore$8()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    const-string v0, "Rate limiter client write success"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$maybeToTask$10(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Throwable;)Lio/reactivex/MaybeSource;
    .locals 1
    .param p0, "tcs"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 279
    move-object v0, p1

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 283
    :goto_0
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$maybeToTask$9(Lcom/google/android/gms/tasks/TaskCompletionSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "tcs"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 274
    return-object v0
.end method

.method static synthetic lambda$updateWasImpressed$1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    return-void
.end method

.method private logActionNotTaken(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;Lio/reactivex/Maybe;)V

    .line 224
    return-void
.end method

.method private logActionNotTaken(Ljava/lang/String;Lio/reactivex/Maybe;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p2, "reason":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 208
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    const-string v0, "Not recording: %s. Reason: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getCampaignMetadata()Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;->getIsTestMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "Not recording: %s. Reason: Message is test message"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "Not recording: %s. Reason: Data collection is disabled"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "Not recording: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void
.end method

.method private logImpressionIfNeeded(Lio/reactivex/Completable;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "actionToTake"    # Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Completable;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 192
    sget-boolean v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->impressionDetected()Lcom/google/android/gms/tasks/Task;

    .line 196
    :cond_0
    invoke-virtual {p1}, Lio/reactivex/Completable;->toMaybe()Lio/reactivex/Maybe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->maybeToTask(Lio/reactivex/Maybe;Lio/reactivex/Scheduler;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private logMessageClick(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "action"    # Lcom/google/firebase/inappmessaging/model/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 148
    const-string v0, "Attempting to record: message click to metrics logger"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$uiJzty8u2FIa5ZppOW-O_hYZtU0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$uiJzty8u2FIa5ZppOW-O_hYZtU0;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/model/Action;)V

    .line 150
    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    .line 152
    .local v0, "completable":Lio/reactivex/Completable;
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logImpressionIfNeeded(Lio/reactivex/Completable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method private logToImpressionStore()Lio/reactivex/Completable;
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getCampaignMetadata()Lcom/google/firebase/inappmessaging/model/CampaignMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/CampaignMetadata;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "campaignId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record message impression in impression store for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->impressionStorageClient:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;

    .line 233
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;->newBuilder()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    .line 234
    invoke-interface {v3}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;->setImpressionTimestampMillis(J)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;->setCampaignId(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    .line 232
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storeImpression(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$E0ADA9sQlfcX2v5SfZr20WZ9GHE;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$E0ADA9sQlfcX2v5SfZr20WZ9GHE;

    .line 237
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$zcZbYpVsGAD65SCzNNEEqGjNXOw;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$zcZbYpVsGAD65SCzNNEEqGjNXOw;

    .line 238
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v1

    .line 240
    .local v1, "storeCampaignImpression":Lio/reactivex/Completable;
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->triggeringEvent:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->isAppForegroundEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->rateLimiterClient:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->appForegroundRateLimit:Lcom/google/firebase/inappmessaging/model/RateLimit;

    .line 243
    invoke-virtual {v2, v3}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->increment(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lio/reactivex/Completable;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$Sv0CH6wBeH5YTSGnBLgRtEqH_0Y;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$Sv0CH6wBeH5YTSGnBLgRtEqH_0Y;

    .line 244
    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$omxJ2K-D8yEumH-_RZ2kGjtXnXU;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$omxJ2K-D8yEumH-_RZ2kGjtXnXU;

    .line 245
    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lio/reactivex/Completable;->onErrorComplete()Lio/reactivex/Completable;

    move-result-object v2

    .line 247
    .local v2, "incrementAppForegroundRateLimit":Lio/reactivex/Completable;
    invoke-virtual {v2, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v3

    return-object v3

    .line 250
    .end local v2    # "incrementAppForegroundRateLimit":Lio/reactivex/Completable;
    :cond_0
    return-object v1
.end method

.method private static maybeToTask(Lio/reactivex/Maybe;Lio/reactivex/Scheduler;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Maybe<",
            "TT;>;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 266
    .local p0, "maybe":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<TT;>;"
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 267
    .local v0, "tcs":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TT;>;"
    nop

    .line 269
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$n-5-DnXRxPLGdFaIueIf_qjHZYc;

    invoke-direct {v1, v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$n-5-DnXRxPLGdFaIueIf_qjHZYc;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v1}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$BDN_tzs3yZpgGj8l7VWD3t0RfOs;

    invoke-direct {v2, v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$BDN_tzs3yZpgGj8l7VWD3t0RfOs;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 271
    invoke-static {v2}, Lio/reactivex/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;

    move-result-object v2

    .line 270
    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$FLTSR4tguF2x3I1Yot0QyMNCC3k;

    invoke-direct {v2, v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$FLTSR4tguF2x3I1Yot0QyMNCC3k;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 276
    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v1

    .line 285
    invoke-virtual {v1, p1}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lio/reactivex/Maybe;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 288
    .local v1, "ignoredDisposable":Lio/reactivex/disposables/Disposable;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2
.end method

.method private shouldLog()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method private updateWasImpressed()Lio/reactivex/Completable;
    .locals 1

    .line 100
    sget-object v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$TOtnpZYIy44hZtooX2V2gjp8CmQ;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$TOtnpZYIy44hZtooX2V2gjp8CmQ;

    invoke-static {v0}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public displayErrorEncountered(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "errorReason"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 170
    const-string v0, "render error to metrics logger"

    .line 171
    .local v0, "RENDER_ERROR":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->shouldLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 174
    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$hjnC3_lUJbgOrGpZv72vqKpmbx0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$hjnC3_lUJbgOrGpZv72vqKpmbx0;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    .line 175
    invoke-static {v1}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v1

    .line 178
    .local v1, "completable":Lio/reactivex/Completable;
    nop

    .line 179
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logToImpressionStore()Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->updateWasImpressed()Lio/reactivex/Completable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Completable;->toMaybe()Lio/reactivex/Maybe;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    .line 180
    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    .line 178
    invoke-static {v2, v3}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->maybeToTask(Lio/reactivex/Maybe;Lio/reactivex/Scheduler;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2

    .line 182
    .end local v1    # "completable":Lio/reactivex/Completable;
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;)V

    .line 183
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public impressionDetected()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 80
    const-string v0, "message impression to metrics logger"

    .line 82
    .local v0, "MESSAGE_IMPRESSION":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->shouldLog()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->wasImpressed:Z

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 85
    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$pRh7cosyc6jxctJKLLhmgor--oc;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$pRh7cosyc6jxctJKLLhmgor--oc;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;)V

    .line 86
    invoke-static {v1}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v1

    .line 88
    .local v1, "logImpressionToMetricsLogger":Lio/reactivex/Completable;
    nop

    .line 89
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logToImpressionStore()Lio/reactivex/Completable;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v2

    .line 91
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->updateWasImpressed()Lio/reactivex/Completable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v2

    .line 93
    .local v2, "logImpressionCompletable":Lio/reactivex/Completable;
    invoke-virtual {v2}, Lio/reactivex/Completable;->toMaybe()Lio/reactivex/Maybe;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->schedulers:Lcom/google/firebase/inappmessaging/internal/Schedulers;

    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/internal/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->maybeToTask(Lio/reactivex/Maybe;Lio/reactivex/Scheduler;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    return-object v3

    .line 95
    .end local v1    # "logImpressionToMetricsLogger":Lio/reactivex/Completable;
    .end local v2    # "logImpressionCompletable":Lio/reactivex/Completable;
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$displayErrorEncountered$4$DisplayCallbacksImpl(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V
    .locals 2
    .param p1, "errorReason"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logRenderError(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    return-void
.end method

.method public synthetic lambda$impressionDetected$0$DisplayCallbacksImpl()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logImpression(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method

.method public synthetic lambda$logMessageClick$3$DisplayCallbacksImpl(Lcom/google/firebase/inappmessaging/model/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/google/firebase/inappmessaging/model/Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logMessageClick(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void
.end method

.method public synthetic lambda$messageDismissed$2$DisplayCallbacksImpl(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V
    .locals 2
    .param p1, "dismissType"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->metricsLoggerClient:Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->logDismiss(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V

    return-void
.end method

.method public messageClicked()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->messageClicked(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public messageClicked(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "action"    # Lcom/google/firebase/inappmessaging/model/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;->CLICK:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->messageDismissed(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logMessageClick(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 142
    :cond_1
    const-string v0, "message click to metrics logger"

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public messageDismissed(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "dismissType"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 111
    const-string v0, "message dismissal to metrics logger"

    .line 112
    .local v0, "MESSAGE_DISMISSAL":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->shouldLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 114
    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$u7B-audIAsOAgf4sofvjccJ0BPA;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$u7B-audIAsOAgf4sofvjccJ0BPA;-><init>(Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingDismissType;)V

    .line 115
    invoke-static {v1}, Lio/reactivex/Completable;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v1

    .line 117
    .local v1, "completable":Lio/reactivex/Completable;
    invoke-direct {p0, v1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logImpressionIfNeeded(Lio/reactivex/Completable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    return-object v2

    .line 119
    .end local v1    # "completable":Lio/reactivex/Completable;
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->logActionNotTaken(Ljava/lang/String;)V

    .line 120
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method
