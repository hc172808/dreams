.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$UWXwj7TKrFkRuiLsKY2JeDvYLGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/model/RateLimit;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$UWXwj7TKrFkRuiLsKY2JeDvYLGc;->f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$UWXwj7TKrFkRuiLsKY2JeDvYLGc;->f$1:Lcom/google/firebase/inappmessaging/model/RateLimit;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$UWXwj7TKrFkRuiLsKY2JeDvYLGc;->f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$UWXwj7TKrFkRuiLsKY2JeDvYLGc;->f$1:Lcom/google/firebase/inappmessaging/model/RateLimit;

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$isRateLimited$5$RateLimiterClient(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object p1

    return-object p1
.end method
