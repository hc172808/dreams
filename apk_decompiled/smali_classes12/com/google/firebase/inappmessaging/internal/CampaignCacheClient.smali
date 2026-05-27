.class public Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;
.super Ljava/lang/Object;
.source "CampaignCacheClient.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final application:Landroid/app/Application;

.field private cachedResponse:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Landroid/app/Application;Lcom/google/firebase/inappmessaging/internal/time/Clock;)V
    .locals 0
    .param p1, "storageClient"    # Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/CampaignCache;
        .end annotation
    .end param
    .param p2, "application"    # Landroid/app/Application;
    .param p3, "clock"    # Lcom/google/firebase/inappmessaging/internal/time/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 51
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->application:Landroid/app/Application;

    .line 52
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    .line 53
    return-void
.end method

.method private isResponseValid(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Z
    .locals 12
    .param p1, "response"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    .line 95
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->getExpirationEpochTimestampMillis()J

    move-result-wide v0

    .line 96
    .local v0, "expirationTimestamp":J
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v2}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v2

    .line 98
    .local v2, "currentTime":J
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->application:Landroid/app/Application;

    .line 100
    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "fiam_eligible_campaigns_cache_file"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-eqz v9, :cond_1

    .line 104
    cmp-long v7, v2, v0

    if-gez v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 107
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    cmp-long v9, v2, v7

    if-gez v9, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5

    .line 110
    :cond_3
    return v6
.end method

.method public static synthetic lambda$Jc0lh_3m7fcCFSYsayevqCCc7bk(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->isResponseValid(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Lio/reactivex/Maybe;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Dmt-MjPi0yLsxUsXW_convUXvQE;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Dmt-MjPi0yLsxUsXW_convUXvQE;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V

    invoke-static {v0}, Lio/reactivex/Maybe;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 84
    .local v0, "readFromCache":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;>;"
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 86
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->read(Lcom/google/protobuf/Parser;)Lio/reactivex/Maybe;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$FFFywAENcfYD4VnZHlqn6pJEMe8;

    invoke-direct {v2, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$FFFywAENcfYD4VnZHlqn6pJEMe8;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V

    .line 87
    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v1

    .line 88
    .local v1, "readFromStorage":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;>;"
    nop

    .line 89
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Jc0lh_3m7fcCFSYsayevqCCc7bk;

    invoke-direct {v3, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$Jc0lh_3m7fcCFSYsayevqCCc7bk;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V

    .line 90
    invoke-virtual {v2, v3}, Lio/reactivex/Maybe;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$mb4i2EB-Qs-391a8NlIEyeZWSTw;

    invoke-direct {v3, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$mb4i2EB-Qs-391a8NlIEyeZWSTw;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)V

    .line 91
    invoke-virtual {v2, v3}, Lio/reactivex/Maybe;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v2

    .line 88
    return-object v2
.end method

.method public synthetic lambda$get$1$CampaignCacheClient()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    return-object v0
.end method

.method public synthetic lambda$get$2$CampaignCacheClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    return-void
.end method

.method public synthetic lambda$get$3$CampaignCacheClient(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    return-void
.end method

.method public synthetic lambda$put$0$CampaignCacheClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 0
    .param p1, "fetchEligibleCampaignsResponse"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    return-void
.end method

.method public put(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Lio/reactivex/Completable;
    .locals 2
    .param p1, "fetchEligibleCampaignsResponse"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    .line 63
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/AbstractMessageLite;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$WQLTyHoe_IDU32OGBDWQ_O7dg-Y;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$CampaignCacheClient$WQLTyHoe_IDU32OGBDWQ_O7dg-Y;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V

    .line 65
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    .line 63
    return-object v0
.end method
