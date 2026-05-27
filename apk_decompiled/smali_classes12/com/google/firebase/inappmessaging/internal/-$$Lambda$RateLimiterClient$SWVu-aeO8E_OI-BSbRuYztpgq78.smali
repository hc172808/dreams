.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$SWVu-aeO8E_OI-BSbRuYztpgq78;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

.field public final synthetic f$1:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$SWVu-aeO8E_OI-BSbRuYztpgq78;->f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$SWVu-aeO8E_OI-BSbRuYztpgq78;->f$1:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$SWVu-aeO8E_OI-BSbRuYztpgq78;->f$0:Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$RateLimiterClient$SWVu-aeO8E_OI-BSbRuYztpgq78;->f$1:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$increment$2$RateLimiterClient(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    return-void
.end method
