.class public Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;
.super Ljava/lang/Object;
.source "ImpressionStorageClient.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final EMPTY_IMPRESSIONS:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;


# instance fields
.field private cachedImpressionsMaybe:Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Maybe<",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;",
            ">;"
        }
    .end annotation
.end field

.field private final storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;)V
    .locals 1
    .param p1, "storageClient"    # Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ImpressionStore;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:Lio/reactivex/Maybe;

    .line 44
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 45
    return-void
.end method

.method private static appendImpression(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    .locals 1
    .param p0, "campaignImpressions"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    .param p1, "impression"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    .line 49
    invoke-static {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->newBuilder(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;->addAlreadySeenCampaigns(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    .line 49
    return-object v0
.end method

.method private clearInMemCache()V
    .locals 1

    .line 86
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:Lio/reactivex/Maybe;

    .line 87
    return-void
.end method

.method private initInMemCache(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V
    .locals 1
    .param p1, "campaignImpressions"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    .line 82
    invoke-static {p1}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:Lio/reactivex/Maybe;

    .line 83
    return-void
.end method

.method public static synthetic lambda$DrKI1WFIxWXGVfsuNAG7X7L2btc(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V

    return-void
.end method


# virtual methods
.method public clearImpressions(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Lio/reactivex/Completable;
    .locals 5
    .param p1, "response"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 109
    .local v0, "idsToClear":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->getMessagesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 111
    .local v2, "content":Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    invoke-virtual {v2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v3

    sget-object v4, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->VANILLA_PAYLOAD:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    invoke-virtual {v3, v4}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {v2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    nop

    .line 114
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v2    # "content":Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .end local v3    # "id":Ljava/lang/String;
    goto :goto_0

    .line 116
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Potential impressions to clear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()Lio/reactivex/Maybe;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    .line 118
    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$cF1Qwa8l71N7sy7ZBz-FIoS5D54;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$cF1Qwa8l71N7sy7ZBz-FIoS5D54;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/util/HashSet;)V

    .line 119
    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v1

    .line 117
    return-object v1
.end method

.method public getAllImpressions()Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:Lio/reactivex/Maybe;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 77
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->read(Lcom/google/protobuf/Parser;)Lio/reactivex/Maybe;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$DrKI1WFIxWXGVfsuNAG7X7L2btc;

    invoke-direct {v2, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$DrKI1WFIxWXGVfsuNAG7X7L2btc;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8hUE3WpXoI_YswhZlY4uRGkZFXM;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8hUE3WpXoI_YswhZlY4uRGkZFXM;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;)V

    .line 78
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public isImpressed(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Lio/reactivex/Single;
    .locals 3
    .param p1, "content"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    sget-object v1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->VANILLA_PAYLOAD:Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    invoke-virtual {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 95
    .local v0, "campaignId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()Lio/reactivex/Maybe;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$WiTgr1zOccm4SCfHqVFSw88Xckw;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$WiTgr1zOccm4SCfHqVFSw88Xckw;

    .line 96
    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$3X-GVbAfJsPgmCp5vGyHqL6t5qg;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$3X-GVbAfJsPgmCp5vGyHqL6t5qg;

    .line 97
    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$V6TrzJoVG82e46zg8-kfm0xO0kA;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/-$$Lambda$V6TrzJoVG82e46zg8-kfm0xO0kA;

    .line 98
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->contains(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v1

    .line 95
    return-object v1
.end method

.method public synthetic lambda$clearImpressions$3$ImpressionStorageClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V
    .locals 0
    .param p1, "clearedImpressionList"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V

    return-void
.end method

.method public synthetic lambda$clearImpressions$4$ImpressionStorageClient(Ljava/util/HashSet;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)Lio/reactivex/CompletableSource;
    .locals 4
    .param p1, "idsToClear"    # Ljava/util/HashSet;
    .param p2, "storedImpressions"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Existing impressions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->newBuilder()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;

    move-result-object v0

    .line 125
    .local v0, "clearedImpressionListBuilder":Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;
    invoke-virtual {p2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->getAlreadySeenCampaignsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    .line 126
    .local v2, "storedImpression":Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;
    invoke-virtual {v2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    invoke-virtual {v0, v2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;->addAlreadySeenCampaigns(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;

    .line 129
    .end local v2    # "storedImpression":Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    .line 131
    .local v1, "clearedImpressionList":Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New cleared impression list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 133
    invoke-virtual {v2, v1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/AbstractMessageLite;)Lio/reactivex/Completable;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$UE8u_7Lam8aGUNjAfyB18kWY0Pw;

    invoke-direct {v3, p0, v1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$UE8u_7Lam8aGUNjAfyB18kWY0Pw;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V

    .line 134
    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v2

    .line 132
    return-object v2
.end method

.method public synthetic lambda$getAllImpressions$2$ImpressionStorageClient(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ignored"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->clearInMemCache()V

    return-void
.end method

.method public synthetic lambda$storeImpression$0$ImpressionStorageClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V
    .locals 0
    .param p1, "appendedImpressions"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V

    return-void
.end method

.method public synthetic lambda$storeImpression$1$ImpressionStorageClient(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)Lio/reactivex/CompletableSource;
    .locals 3
    .param p1, "impression"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;
    .param p2, "storedImpressions"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    nop

    .line 61
    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->appendImpression(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    move-result-object v0

    .line 62
    .local v0, "appendedImpressions":Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 63
    invoke-virtual {v1, v0}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/AbstractMessageLite;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$ItABvjyB4HerJll4B_LCs2BXf0Y;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$ItABvjyB4HerJll4B_LCs2BXf0Y;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;)V

    .line 64
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v1

    .line 62
    return-object v1
.end method

.method public storeImpression(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lio/reactivex/Completable;
    .locals 2
    .param p1, "impression"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    .line 56
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpressionList;

    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8JkvwOKeRhMZxUuSiy4-Mtvc_qQ;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ImpressionStorageClient$8JkvwOKeRhMZxUuSiy4-Mtvc_qQ;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)V

    .line 58
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    .line 56
    return-object v0
.end method
