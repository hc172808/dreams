.class public Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;
.super Ljava/lang/Object;
.source "RateLimiterClient.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final EMPTY_RATE_LIMITS:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;


# instance fields
.field private cachedRateLimts:Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Maybe<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getDefaultInstance()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->EMPTY_RATE_LIMITS:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;)V
    .locals 1
    .param p1, "storageClient"    # Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/RateLimit;
        .end annotation
    .end param
    .param p2, "clock"    # Lcom/google/firebase/inappmessaging/internal/time/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->cachedRateLimts:Lio/reactivex/Maybe;

    .line 51
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 52
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    .line 53
    return-void
.end method

.method private clearInMemCache()V
    .locals 1

    .line 112
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->cachedRateLimts:Lio/reactivex/Maybe;

    .line 113
    return-void
.end method

.method private getRateLimits()Lio/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->cachedRateLimts:Lio/reactivex/Maybe;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    .line 103
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->read(Lcom/google/protobuf/Parser;)Lio/reactivex/Maybe;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$gKqQds9AeeYbueRrRqOaep_emX8;

    invoke-direct {v2, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$gKqQds9AeeYbueRrRqOaep_emX8;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Maybe;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$XovjMVSG2BE3w4qvAniVX2qUeNw;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$XovjMVSG2BE3w4qvAniVX2qUeNw;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;)V

    .line 104
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method private static increment(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 5
    .param p0, "current"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    .line 56
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->newBuilder(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->clearValue()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->setValue(J)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method

.method private initInMemCache(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V
    .locals 1
    .param p1, "rateLimits"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 108
    invoke-static {p1}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->cachedRateLimts:Lio/reactivex/Maybe;

    .line 109
    return-void
.end method

.method private isLimitExpired(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;Lcom/google/firebase/inappmessaging/model/RateLimit;)Z
    .locals 7
    .param p1, "counter"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .param p2, "limit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;

    .line 96
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v0

    .line 97
    .local v0, "currentTime":J
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getStartTimeEpoch()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/RateLimit;->timeToLiveMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static synthetic lambda$gKqQds9AeeYbueRrRqOaep_emX8(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->initInMemCache(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    return-void
.end method

.method static synthetic lambda$increment$1(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 3
    .param p0, "storedLimits"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .param p1, "limit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
    .param p2, "current"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-static {p2}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->increment(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v0

    .line 78
    .local v0, "incremented":Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->newBuilder(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limiterKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->putLimits(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 78
    return-object v1
.end method

.method private newCounter()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 3

    .line 116
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->newBuilder()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->setValue(J)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->setStartTimeEpoch(J)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object v0
.end method


# virtual methods
.method public increment(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lio/reactivex/Completable;
    .locals 2
    .param p1, "limit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;

    .line 68
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->getRateLimits()Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->EMPTY_RATE_LIMITS:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 69
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Bv6jmaa2yEZO-bcsbZKbR9Ab0Sw;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Bv6jmaa2yEZO-bcsbZKbR9Ab0Sw;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;)V

    .line 70
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public isRateLimited(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lio/reactivex/Single;
    .locals 2
    .param p1, "limit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->getRateLimits()Lio/reactivex/Maybe;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getDefaultInstance()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->switchIfEmpty(Lio/reactivex/MaybeSource;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$UWXwj7TKrFkRuiLsKY2JeDvYLGc;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$UWXwj7TKrFkRuiLsKY2JeDvYLGc;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;)V

    .line 90
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$IL9xQml3jVO84qpsPgVrVZwWHgM;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$IL9xQml3jVO84qpsPgVrVZwWHgM;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;)V

    .line 91
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lio/reactivex/Maybe;->isEmpty()Lio/reactivex/Single;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public synthetic lambda$getRateLimits$7$RateLimiterClient(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ignored"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->clearInMemCache()V

    return-void
.end method

.method public synthetic lambda$increment$0$RateLimiterClient(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z
    .locals 1
    .param p1, "limit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
    .param p2, "counter"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->isLimitExpired(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;Lcom/google/firebase/inappmessaging/model/RateLimit;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$increment$2$RateLimiterClient(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V
    .locals 0
    .param p1, "a"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->initInMemCache(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    return-void
.end method

.method public synthetic lambda$increment$3$RateLimiterClient(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lio/reactivex/CompletableSource;
    .locals 2
    .param p1, "a"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/AbstractMessageLite;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$SWVu-aeO8E_OI-BSbRuYztpgq78;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$SWVu-aeO8E_OI-BSbRuYztpgq78;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$increment$4$RateLimiterClient(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lio/reactivex/CompletableSource;
    .locals 2
    .param p1, "limit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
    .param p2, "storedLimits"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limiterKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->newCounter()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsOrDefault(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$kbrfFHP4dmBzVSP34CE6t39aIhY;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$kbrfFHP4dmBzVSP34CE6t39aIhY;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;)V

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 74
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->newCounter()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->switchIfEmpty(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Rkb-RzOD_2PtDTLPhJsuD06zQoo;

    invoke-direct {v1, p2, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$Rkb-RzOD_2PtDTLPhJsuD06zQoo;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;)V

    .line 75
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$_Xl8O5mzrof3GNSqMtzX2OmhALY;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$_Xl8O5mzrof3GNSqMtzX2OmhALY;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;)V

    .line 82
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public synthetic lambda$isRateLimited$5$RateLimiterClient(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 2
    .param p1, "limit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
    .param p2, "storedLimits"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limiterKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->newCounter()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsOrDefault(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$isRateLimited$6$RateLimiterClient(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z
    .locals 5
    .param p1, "limit"    # Lcom/google/firebase/inappmessaging/model/RateLimit;
    .param p2, "counter"    # Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->isLimitExpired(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;Lcom/google/firebase/inappmessaging/model/RateLimit;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limit()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

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
